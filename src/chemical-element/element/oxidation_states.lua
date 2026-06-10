local is_array = require("chemical-element.util.is_array")

---@class OxidationStates
local OxidationStates = {}

local DATA = setmetatable({}, { __mode = "k" })

local METATABLE = {
    __index = function(self, k)
        local self_data = DATA[self]
        if self_data ~= nil then
            local value = self_data[k]
            if value ~= nil then return value end
        end
        return OxidationStates[k]
    end,
    __newindex = function(self, k, v)
        error("OxidationStates records are immutable", 2)
    end,
    __eq = function(self, other)
        if rawequal(self, other) then return true end

        local self_data, other_data = DATA[self], DATA[other]

        if self_data == nil or other_data == nil then
            return false
        end

        if #self_data ~= #other_data then
            return false
        end

        for i = 1, #self_data do

            local self_oxidation_state = self_data[i]
            local other_oxidation_state = other_data[i]

            if self_oxidation_state ~= other_oxidation_state then
                return false
            end
        end

        return true
    end,
    __tostring = function(self)

        local self_data = DATA[self]

        local oxidation_state_string_parts = {}

        for i = 1, #self_data do
            oxidation_state_string_parts[i] = tostring(self_data[i])
        end

        return string.format("OxidationStates{%s}", table.concat(oxidation_state_string_parts, ", "))
    end,
    __metatable = OxidationStates
}

---@param oxidation_states integer[]
---@return OxidationStates
function OxidationStates.new(oxidation_states)
    assert(
        is_array(oxidation_states, function(v) return type(v) == "number" and v == math.floor(v) end),
        "integer array required"
    )

    local oxidation_states_copy, seen = {}, {}

    for i, v in ipairs(oxidation_states) do

        if seen[v] then
            error("duplicate oxidation state value: " .. tostring(v), 2)
        end

        seen[v] = true
        oxidation_states_copy[i] = v
    end

    table.sort(oxidation_states_copy)

    local obj = setmetatable({}, METATABLE)

    DATA[obj] = oxidation_states_copy

    return obj
end

---@return fun(): integer?, integer?
function OxidationStates:ipairs()
    local self_data = DATA[self]
    local i = 0
    return function()
        i = i + 1
        if i <= #self_data then
            return i, self_data[i]
        end
        return nil, nil
    end
end

---@return integer
function OxidationStates:length() return #DATA[self] end

---@return string
function OxidationStates:formatted_string()
    local self_data = DATA[self]
    local oxidation_state_strings = {}

    for i = 1, #self_data do

        local oxidation_state = self_data[i]

        if oxidation_state > 0 then
            oxidation_state_strings[i] = "+" .. oxidation_state
        else
            oxidation_state_strings[i] = tostring(oxidation_state)
        end
    end

    return table.concat(oxidation_state_strings, ", ")
end

return OxidationStates
