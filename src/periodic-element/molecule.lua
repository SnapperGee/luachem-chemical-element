local Element = require("periodic-element.element")
local elements = require("periodic-element.elements")
local is_array = require("periodic-element.util.is_array")

---@class Molecule
local Molecule = {}

local DATA = setmetatable({}, { __mode = "k" })

local METATABLE = {
    __index = function(self, k)
        local self_data = DATA[self]
        if self_data ~= nil then
            if getmetatable(k) == Element then
                return self_data.elements[k] or 0
            elseif type(k) == "string" or type(k) == "number" then
                return self_data.elements[elements[k]] or 0
            end
        end
        return Molecule[k]
    end,
    __newindex = function(self, k, v)
        error("Molecule records are immutable", 2)
    end,
    __eq = function(self, other)
        if rawequal(self, other) then return true end

        local self_data, other_data = DATA[self], DATA[other]

        if self_data == nil or other_data == nil then
            return false
        end

        if self_data.length ~= other_data.length then
            return false
        end

        for element, count in pairs(self_data.elements) do
            if other_data.elements[element] ~= count then
                return false
            end
        end

        return true
    end,
    __tostring = function(self)
        local self_data = DATA[self]
        local element_string_parts = {}
        for element, count in pairs(self_data.elements) do
            element_string_parts[#element_string_parts + 1] = element.symbol .. "=" .. count
        end
        table.sort(element_string_parts)
        return string.format(
            "Molecule{length=%d, mass=%g, elements={%s}}",
            self_data.length,
            self_data.mass,
            table.concat(element_string_parts, ", ")
        )
    end,
    __metatable = Molecule
}

---@param element_counts table<Element, integer> -- non empty table of Elements mapped to integers > 0
---@return Molecule
function Molecule.new(element_counts)
    assert(type(element_counts) == "table", "'element_counts' table expected")

    local _count = 0
    local _mass = 0
    local _elements = {}

    for element, element_count in pairs(element_counts) do
        assert(getmetatable(element) == Element, "non Element key in 'element_counts'")
        assert(
            type(element_count) == "number" and element_count > 0 and element_count == math.floor(element_count),
            "non-positive integer element count: " .. tostring(element_count)
        )

        _count = _count + 1
        _mass = _mass + (element.mass * element_count)
        _elements[element] = element_count
    end

    assert(_count ~= 0, "non empty 'element_counts' table expected")

    local obj = setmetatable({}, METATABLE)

    DATA[obj] = {
        count = _count,
        mass = _mass,
        elements = _elements
    }

    return obj
end

---@return fun(): Element?, integer?
function Molecule:elements()
    local t = DATA[self].elements
    local k
    return function()
        k = next(t, k)
        if k ~= nil then
            return k, t[k]
        end
        return nil, nil
    end
end

---@return number -- molar mass of this molecule
function Molecule:mass()
    return DATA[self].mass
end

---@return integer -- total number of elements this molecule contains
function Molecule:count()
    return DATA[self].count
end

return Molecule
