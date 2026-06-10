local Element = require("chemical-element.element")
local ElementSet = require("chemical-element.elements.element_set")
local ElectronConfiguration = require("chemical-element.element.electron_configuration")
local SubshellOccupancy = require("chemical-element.element.subshell_occupancy")

local beryllium_subshell_occupancy = SubshellOccupancy.new{
    n = 2,
    l = "s",
    electron_count = 2
}

local beryllium_electron_configuration = ElectronConfiguration.new{
    core = "He",
    subshell_occupancy = { beryllium_subshell_occupancy }
}

local beryllium = Element.partial{
    name = "Beryllium",
    symbol = "Be",
    number = 4,
    mass = 9.012183,
    group = 2,
    period = 2,
    oxidation_states = {2},
    electron_configuration = beryllium_electron_configuration,
    electronegativity = 1.57,
    atomic_radius = 153,
    ionization_energy = 9.323,
    melting_point = 1560,
    boiling_point = 2744,
    density = 1.85,
    standard_state = "solid"
}

local magnesium_subshell_occupancy = SubshellOccupancy.new{
    n = 3,
    l = "s",
    electron_count = 2
}

local magnesium_electron_configuration = ElectronConfiguration.new{
    core = "Ne",
    subshell_occupancy = { magnesium_subshell_occupancy }
}

local magnesium = Element.partial{
    name = "Magnesium",
    symbol = "Mg",
    number = 12,
    mass = 24.305,
    group = 2,
    period = 3,
    oxidation_states = {2},
    electron_configuration = magnesium_electron_configuration,
    electronegativity = 1.31,
    atomic_radius = 173,
    ionization_energy = 7.646,
    melting_point = 923,
    boiling_point = 1363,
    density = 1.74,
    standard_state = "solid"
}

local calcium_subshell_occupancy = SubshellOccupancy.new{
    n = 4,
    l = "s",
    electron_count = 2
}

local calcium_electron_configuration = ElectronConfiguration.new{
    core = "Ar",
    subshell_occupancy = { calcium_subshell_occupancy }
}

local calcium = Element.partial{
    name = "Calcium",
    symbol = "Ca",
    number = 20,
    mass = 40.078,
    group = 2,
    period = 4,
    oxidation_states = {2},
    electron_configuration = calcium_electron_configuration,
    electronegativity = 1,
    atomic_radius = 231,
    ionization_energy = 6.113,
    melting_point = 1115,
    boiling_point = 1757,
    density = 1.54,
    standard_state = "solid"
}

local strontium_subshell_occupancy = SubshellOccupancy.new{
    n = 5,
    l = "s",
    electron_count = 2
}

local strontium_electron_configuration = ElectronConfiguration.new{
    core = "Kr",
    subshell_occupancy = { strontium_subshell_occupancy }
}

local strontium = Element.partial{
    name = "Strontium",
    symbol = "Sr",
    number = 38,
    mass = 87.62,
    group = 2,
    period = 5,
    oxidation_states = {2},
    electron_configuration = strontium_electron_configuration,
    electronegativity = 0.95,
    atomic_radius = 249,
    ionization_energy = 5.695,
    melting_point = 1050,
    boiling_point = 1655,
    density = 2.64,
    standard_state = "solid"
}

local barium_subshell_occupancy = SubshellOccupancy.new{
    n = 6,
    l = "s",
    electron_count = 2
}

local barium_electron_configuration = ElectronConfiguration.new{
    core = "Xe",
    subshell_occupancy = { barium_subshell_occupancy }
}

local barium = Element.partial{
    name = "Barium",
    symbol = "Ba",
    number = 56,
    mass = 137.328,
    group = 2,
    period = 6,
    oxidation_states = {2},
    electron_configuration = barium_electron_configuration,
    electronegativity = 0.89,
    atomic_radius = 268,
    ionization_energy = 5.212,
    melting_point = 1000,
    boiling_point = 2170,
    density = 3.62,
    standard_state = "solid"
}

local radium_subshell_occupancy = SubshellOccupancy.new{
    n = 7,
    l = "s",
    electron_count = 2
}

local radium_electron_configuration = ElectronConfiguration.new{
    core = "Rn",
    subshell_occupancy = { radium_subshell_occupancy }
}

local radium = Element.partial{
    name = "Radium",
    symbol = "Ra",
    number = 88,
    mass = 226.02541,
    group = 2,
    period = 7,
    oxidation_states = {2},
    electron_configuration = radium_electron_configuration,
    electronegativity = 0.9,
    atomic_radius = 283,
    ionization_energy = 5.279,
    melting_point = 973,
    boiling_point = 1413,
    density = 5,
    standard_state = "solid"
}

--- Elements of the Alkaline Earth Metals family (group 2).
---@class AlkalineEarthMetal: ElementSet
---@field beryllium Element
---@field magnesium Element
---@field calcium Element
---@field strontium Element
---@field barium Element
---@field radium Element
local alkaline_earth_metal = ElementSet.new(
    {beryllium, magnesium, calcium, strontium, barium, radium},
    "AlkalineEarthMetal"
)

return alkaline_earth_metal
