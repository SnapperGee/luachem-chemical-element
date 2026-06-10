local Element = require("chemical-element.element")
local ElementSet = require("chemical-element.elements.element_set")
local ElectronConfiguration = require("chemical-element.element.electron_configuration")
local SubshellOccupancy = require("chemical-element.element.subshell_occupancy")

local hydrogen_subshell_occupancy = SubshellOccupancy.new{
    n = 1,
    l = "s",
    electron_count = 1
}

local hydrogen_electron_configuration = ElectronConfiguration.new{
    subshell_occupancy = { hydrogen_subshell_occupancy }
}

local hydrogen = Element.new{
    name = "Hydrogen",
    symbol = "H",
    number = 1,
    mass = 1.008,
    group = 1,
    period = 1,
    oxidation_states = {-1, 1},
    electron_configuration = hydrogen_electron_configuration,
    electronegativity = 2.2,
    atomic_radius = 120,
    ionization_energy = 13.598,
    electron_affinity = 0.754,
    melting_point = 13.81,
    boiling_point = 20.28,
    density = 0.00008988,
    standard_state = "gas"
}

local carbon_subshell_occupancy1 = SubshellOccupancy.new{
    n = 2,
    l = "s",
    electron_count = 2
}

local carbon_subshell_occupancy2 = SubshellOccupancy.new{
    n = 2,
    l = "p",
    electron_count = 2
}

local carbon_electron_configuration = ElectronConfiguration.new{
    core = "He",
    subshell_occupancy = {
        carbon_subshell_occupancy1,
        carbon_subshell_occupancy2
    }
}

local carbon = Element.new{
    name = "Carbon",
    symbol = "C",
    number = 6,
    mass = 12.011,
    group = 14,
    period = 2,
    oxidation_states = {-4, 2, 4},
    electron_configuration = carbon_electron_configuration,
    electronegativity = 2.55,
    atomic_radius = 170,
    ionization_energy = 11.26,
    electron_affinity = 1.263,
    melting_point = 3823,
    boiling_point = 4098,
    density = 2.267,
    standard_state = "solid"
}

local nitrogen_subshell_occupancy1 = SubshellOccupancy.new{
    n = 2,
    l = "s",
    electron_count = 2
}

local nitrogen_subshell_occupancy2 = SubshellOccupancy.new{
    n = 2,
    l = "p",
    electron_count = 3
}

local nitrogen_electron_configuration = ElectronConfiguration.new{
    core = "He",
    subshell_occupancy = {
        nitrogen_subshell_occupancy1,
        nitrogen_subshell_occupancy2
    }
}

local nitrogen = Element.new{
    name = "Nitrogen",
    symbol = "N",
    number = 7,
    mass = 14.007,
    group = 15,
    period = 2,
    oxidation_states = {-3, -2, -1, 1, 2, 3, 4, 5},
    electron_configuration = nitrogen_electron_configuration,
    electronegativity = 3.04,
    atomic_radius = 155,
    ionization_energy = 14.534,
    melting_point = 63.15,
    boiling_point = 77.36,
    density = 0.0012506,
    standard_state = "gas"
}

local oxygen_subshell_occupancy1 = SubshellOccupancy.new{
    n = 2,
    l = "s",
    electron_count = 2
}

local oxygen_subshell_occupancy2 = SubshellOccupancy.new{
    n = 2,
    l = "p",
    electron_count = 4
}

local oxygen_electron_configuration = ElectronConfiguration.new{
    core = "He",
    subshell_occupancy = {
        oxygen_subshell_occupancy1,
        oxygen_subshell_occupancy2
    }
}

local oxygen = Element.new{
    name = "Oxygen",
    symbol = "O",
    number = 8,
    mass = 15.999,
    group = 16,
    period = 2,
    oxidation_states = {-2},
    electron_configuration = oxygen_electron_configuration,
    electronegativity = 3.44,
    atomic_radius = 152,
    ionization_energy = 13.618,
    electron_affinity = 1.461,
    melting_point = 54.36,
    boiling_point = 90.2,
    density = 0.001429,
    standard_state = "gas"
}

local phosphorus_subshell_occupancy1 = SubshellOccupancy.new{
    n = 3,
    l = "s",
    electron_count = 2
}

local phosphorus_subshell_occupancy2 = SubshellOccupancy.new{
    n = 3,
    l = "p",
    electron_count = 3
}

local phosphorus_electron_configuration = ElectronConfiguration.new{
    core = "Ne",
    subshell_occupancy = {
        phosphorus_subshell_occupancy1,
        phosphorus_subshell_occupancy2
    }
}

local phosphorus = Element.new{
    name = "Phosphorus",
    symbol = "P",
    number = 15,
    mass = 30.973762,
    group = 15,
    period = 3,
    oxidation_states = {-3, 3, 5},
    electron_configuration = phosphorus_electron_configuration,
    electronegativity = 2.19,
    atomic_radius = 180,
    ionization_energy = 10.487,
    electron_affinity = 0.746,
    melting_point = 317.3,
    boiling_point = 553.65,
    density = 1.82,
    standard_state = "solid"
}

local sulfur_subshell_occupancy1 = SubshellOccupancy.new{
    n = 3,
    l = "s",
    electron_count = 2
}

local sulfur_subshell_occupancy2 = SubshellOccupancy.new{
    n = 3,
    l = "p",
    electron_count = 4
}

local sulfur_electron_configuration = ElectronConfiguration.new{
    core = "Ne",
    subshell_occupancy = {
        sulfur_subshell_occupancy1,
        sulfur_subshell_occupancy2
    }
}

local sulfur = Element.new{
    name = "Sulfur",
    symbol = "S",
    number = 16,
    mass = 32.066,
    group = 16,
    period = 3,
    oxidation_states = {-2, 4, 6},
    electron_configuration = sulfur_electron_configuration,
    electronegativity = 2.58,
    atomic_radius = 180,
    ionization_energy = 10.36,
    electron_affinity = 2.077,
    melting_point = 388.36,
    boiling_point = 717.75,
    density = 2.067,
    standard_state = "solid"
}

local selenium_subshell_occupancy1 = SubshellOccupancy.new{
    n = 3,
    l = "d",
    electron_count = 10
}

local selenium_subshell_occupancy2 = SubshellOccupancy.new{
    n = 4,
    l = "s",
    electron_count = 2
}

local selenium_subshell_occupancy3 = SubshellOccupancy.new{
    n = 4,
    l = "p",
    electron_count = 4
}

local selenium_electron_configuration = ElectronConfiguration.new{
    core = "Ar",
    subshell_occupancy = {
        selenium_subshell_occupancy1,
        selenium_subshell_occupancy2,
        selenium_subshell_occupancy3
    }
}

local selenium = Element.new{
    name = "Selenium",
    symbol = "Se",
    number = 34,
    mass = 78.971,
    group = 16,
    period = 4,
    oxidation_states = {-2, 4, 6},
    electron_configuration = selenium_electron_configuration,
    electronegativity = 2.55,
    atomic_radius = 190,
    ionization_energy = 9.752,
    electron_affinity = 2.021,
    melting_point = 493.65,
    boiling_point = 958,
    density = 4.809,
    standard_state = "solid"
}

--- Elements of the Nonmetal group.
---@class Nonmetal: ElementSet
---@field hydrogen Element
---@field carbon Element
---@field nitrogen Element
---@field oxygen Element
---@field phosphorus Element
---@field sulfur Element
---@field selenium Element
local nonmetal = ElementSet.new(
    {hydrogen, carbon, nitrogen, oxygen, phosphorus, sulfur, selenium},
    "Nonmetal"
)

return nonmetal
