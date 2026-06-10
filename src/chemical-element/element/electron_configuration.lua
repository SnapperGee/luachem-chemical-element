local SubshellOccupancy = require("chemical-element.element.subshell_occupancy")
local is_array = require("chemical-element.util.is_array")

local NOBLE_GAS_SYMBOLS = { He = true, Ne = true, Ar = true, Kr = true, Xe = true, Rn = true, Og = true }
local NOBLE_GAS_RANK = { He = 0, Ne = 1, Ar = 2, Kr = 3, Xe = 4, Rn = 5, Og = 6 }

---@alias NobleGasSymbol "He"|"Ne"|"Ar"|"Kr"|"Xe"|"Rn"|"Og"

---@class ElectronConfiguration
---@field core NobleGasSymbol|nil    -- noble-gas symbol such as "He","Ne","Ar","Kr","Xe","Rn", or "Og"
---@field subshell_occupancy SubshellOccupancy[] -- ordered list as written (keep authoring order)
local ElectronConfiguration = {}

local DATA = setmetatable({}, { __mode = "k" })

local METATABLE = {__metatable = ElectronConfiguration}

function METATABLE:__index(k)
    local self_data = DATA[self]
    if self_data ~= nil then
        local value = self_data[k]
        if value ~= nil then return value end
    end
    return ElectronConfiguration[k]
end

function METATABLE:__newindex(k, v)
    error("ElectronConfiguration records are immutable", 2)
end

function METATABLE:__eq(other)
    if rawequal(self, other) then return true end

    local self_data, other_data = DATA[self], DATA[other]

    if self_data == nil or other_data == nil then
        return false
    end

    if self_data.core ~= other_data.core then return false end

    local self_subshell_occupancy = self_data.subshell_occupancy
    local other_subshell_occupancy = other_data.subshell_occupancy

    if #self_subshell_occupancy ~= #other_subshell_occupancy then return false end

    for i = 1, #self_subshell_occupancy do
        if self_subshell_occupancy[i] ~= other_subshell_occupancy[i] then
            return false
        end
    end

    return true
end

function METATABLE:__lt(other)
    if rawequal(self, other) then return false end

    local self_data, other_data = DATA[self], DATA[other]

    if self_data == nil or other_data == nil then
        error("comparison with non-ElectronConfiguration", 2)
    end

    local self_noble_gas_rank = self_data.core and NOBLE_GAS_RANK[self_data.core] or -1
    local other_noble_gas_rank = other_data.core and NOBLE_GAS_RANK[other_data.core] or -1

    if self_noble_gas_rank ~= other_noble_gas_rank then
        return self_noble_gas_rank < other_noble_gas_rank
    end

    local self_number_of_subshells, other_number_of_subshells = #self_data.subshell_occupancy, #other_data.subshell_occupancy
    local minimum_number_of_subshells = (self_number_of_subshells < other_number_of_subshells) and self_number_of_subshells or other_number_of_subshells

    for i = 1, minimum_number_of_subshells do

        local self_subshell_occupancy = self_data.subshell_occupancy[i]
        local other_subshell_occupancy = other_data.subshell_occupancy[i]

        if self_subshell_occupancy ~= other_subshell_occupancy then
            return self_subshell_occupancy < other_subshell_occupancy
        end
    end

    return self_number_of_subshells < other_number_of_subshells
end

function METATABLE:__le(other)
    return not METATABLE.__lt(other, self)
end

function METATABLE:__tostring()

    local self_data = DATA[self]

    local subshell_string_parts = {}

    for i = 1, #self_data.subshell_occupancy do
        subshell_string_parts[i] = self_data.subshell_occupancy[i].canonical_string
    end

    return string.format(
        "ElectronConfiguration{core=%s, subshell_occupancy={%s}}",
        tostring(self_data.core),
        table.concat(subshell_string_parts, ", ")
    )
end

---@alias AnyCaseNobleGasSymbol NobleGasSymbol|"he"|"ne"|"ar"|"kr"|"xe"|"rn"|"og"

---@class ElectronConfigurationOpts
---@field core AnyCaseNobleGasSymbol|nil
---@field subshell_occupancy  SubshellOccupancy[] -- ordered list as written (keep authoring order)

--- Constructs an ``ElectronConfiguration`` instance with the provided properties.
---@param opts ElectronConfigurationOpts
---@return ElectronConfiguration
function ElectronConfiguration.new(opts)

    assert(type(opts) == "table", "opts table required")

    assert(
        opts.core == nil or type(opts.core) == "string" and #opts.core == 2,
        string.format("expected 'core' string of nil or 2 characters but got: %s", tostring(opts.core))
    )

    local normalized_core_string = opts.core and (opts.core:sub(1,1):upper() .. opts.core:sub(2):lower()) or nil

    assert(
        normalized_core_string == nil or NOBLE_GAS_SYMBOLS[normalized_core_string],
        string.format("expected 'core' string of nil, 'He','Ne','Ar','Kr','Xe','Rn', or 'Og' but got: %s", tostring(opts.core))
    )

    assert(
        is_array(opts.subshell_occupancy, SubshellOccupancy),
        string.format("expected non empty 'subshell_occupancy' array of SubshellOccupancies but got: %s", tostring(opts.subshell_occupancy))
    )

    local subshell_occupancy_copy = {}

    for i = 1, #opts.subshell_occupancy do
        subshell_occupancy_copy[i] = opts.subshell_occupancy[i]
    end

    local orbitals_string = ""

    for _, subshell_occupancy in ipairs(subshell_occupancy_copy) do
        orbitals_string = orbitals_string .. subshell_occupancy.canonical_string
    end

    local canonical_string = (normalized_core_string and "[" .. normalized_core_string .. "]" or "") .. orbitals_string

    local obj = setmetatable({}, METATABLE)

    DATA[obj] = {
        core = normalized_core_string,
        subshell_occupancy = subshell_occupancy_copy,
        canonical_string = canonical_string
    }

    return obj
end

return ElectronConfiguration
