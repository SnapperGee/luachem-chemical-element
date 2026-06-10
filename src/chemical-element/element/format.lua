local OxidationStates = require("chemical-element.element.oxidation_states")
local ElectronConfiguration = require("chemical-element.element.electron_configuration")

local concat, tostring, find, getmetatable = table.concat, tostring, string.find, getmetatable

local _element_property_keys = {
    "name", "symbol", "number", "mass", "block", "oxidation_states", "family",
    "electron_configuration", "standard_state", "group", "period",
    "electronegativity", "ionization_energy", "electron_affinity", "density",
    "atomic_radius", "melting_point", "boiling_point"
}

local element_property_keys_length = #_element_property_keys

---@class csv
local csv = {
    __newindex = function(self, k, v)
        error("csv records are immutable", 2)
    end
}

--- The ``string`` that can be used as the header for a csv file.
csv.header_row = concat(_element_property_keys, ",")

csv.__index = csv
--- Converts an ``Element`` object into a csv string.
---@param element Element
---@return string
function csv:__call(element)
    local out = {}

    for i = 1, element_property_keys_length do
        local element_key = _element_property_keys[i]
        local element_property_value = element[element_key]
        local element_property_value_metatable = getmetatable(element_property_value)

        if element_property_value_metatable == OxidationStates then

            local oxidation_state_ints = {}

            for _, oxidation_state_int in element_property_value:ipairs() do
                oxidation_state_ints[#oxidation_state_ints+1] = oxidation_state_int
            end

            out[i] = '"[' .. concat(oxidation_state_ints, ", ") .. ']"'
        elseif element_property_value_metatable == ElectronConfiguration then
            out[i] = '"' .. element_property_value.canonical_string .. '"'
        else
            if element_property_value == nil then
                out[i] = ""
            elseif type(element_property_value) == "string" then
                out[i] = find(element_property_value, "[%s,]") and ('"' .. element_property_value .. '"') or element_property_value
            else
                out[i] = tostring(element_property_value)
            end
        end
    end

    return concat(out, ",")
end

--- Returns an array the Element class property keys as ``string``.
---@return string[]
local function element_property_keys()
    local columns_header_values_copy = {}
    for i = 1, element_property_keys_length do columns_header_values_copy[i] = _element_property_keys[i] end
    return columns_header_values_copy
end

return {
    element_property_keys = element_property_keys,
    csv = setmetatable(csv, csv)
}
