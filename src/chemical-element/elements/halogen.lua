local Element = require("chemical-element.element")
local ElementSet = require("chemical-element.elements.element_set")
local ElectronConfiguration = require("chemical-element.element.electron_configuration")
local SubshellOccupancy = require("chemical-element.element.subshell_occupancy")

local fluorine_subshell_occupancy1 = SubshellOccupancy.new{
    n = 2,
    l = "s",
    electron_count = 2
}

local fluorine_subshell_occupancy2 = SubshellOccupancy.new{
    n = 2,
    l = "p",
    electron_count = 5
}

local fluorine_electron_configuration = ElectronConfiguration.new{
    core = "He",
    subshell_occupancy = {
        fluorine_subshell_occupancy1,
        fluorine_subshell_occupancy2
    }
}

local fluorine = Element.new{
    name = "Fluorine",
    symbol = "F",
    number = 9,
    mass = 18.99840316,
    group = 17,
    period = 2,
    oxidation_states = {-1},
    electron_configuration = fluorine_electron_configuration,
    electron_affinity = 3.339,
    atomic_radius = 135,
    ionization_energy = 17.423,
    electronegativity = 3.98,
    melting_point = 53.53,
    boiling_point = 85.03,
    density = 0.001696,
    standard_state = "gas"
}

local chlorine_subshell_occupancy1 = SubshellOccupancy.new{
    n = 3,
    l = "s",
    electron_count = 2
}

local chlorine_subshell_occupancy2 = SubshellOccupancy.new{
    n = 3,
    l = "p",
    electron_count = 5
}

local chlorine_electron_configuration = ElectronConfiguration.new{
    core = "Ne",
    subshell_occupancy = {
        chlorine_subshell_occupancy1,
        chlorine_subshell_occupancy2
    }
}

local chlorine = Element.new{
    name = "Chlorine",
    symbol = "Cl",
    number = 17,
    mass = 35.453,
    group = 17,
    period = 3,
    oxidation_states = {-1, 1, 5, 7},
    electron_configuration = chlorine_electron_configuration,
    electronegativity = 3.16,
    atomic_radius = 175,
    ionization_energy = 12.968,
    electron_affinity = 3.617,
    melting_point = 171.65,
    boiling_point = 239.11,
    density = 0.003214,
    standard_state = "gas"
}

local bromine_subshell_occupancy1 = SubshellOccupancy.new{
    n = 3,
    l = "d",
    electron_count = 10
}

local bromine_subshell_occupancy2 = SubshellOccupancy.new{
    n = 4,
    l = "s",
    electron_count = 2
}

local bromine_subshell_occupancy3 = SubshellOccupancy.new{
    n = 4,
    l = "p",
    electron_count = 5
}

local bromine_electron_configuration = ElectronConfiguration.new{
    core = "Ar",
    subshell_occupancy = {
        bromine_subshell_occupancy1,
        bromine_subshell_occupancy2,
        bromine_subshell_occupancy3
    }
}

local bromine = Element.new{
    name = "Bromine",
    symbol = "Br",
    number = 35,
    mass = 79.904,
    group = 17,
    period = 4,
    oxidation_states = {-1, 1, 5},
    electron_configuration = bromine_electron_configuration,
    electron_affinity = 3.365,
    atomic_radius = 183,
    ionization_energy = 11.814,
    electronegativity = 2.96,
    melting_point = 265.95,
    boiling_point = 331.95,
    density = 3.11,
    standard_state = "liquid"
}

local iodine_subshell_occupancy1 = SubshellOccupancy.new{
    n = 4,
    l = "d",
    electron_count = 10
}

local iodine_subshell_occupancy2 = SubshellOccupancy.new{
    n = 5,
    l = "s",
    electron_count = 2
}

local iodine_subshell_occupancy3 = SubshellOccupancy.new{
    n = 5,
    l = "p",
    electron_count = 5
}

local iodine_electron_configuration = ElectronConfiguration.new{
    core = "Kr",
    subshell_occupancy = {
        iodine_subshell_occupancy1,
        iodine_subshell_occupancy2,
        iodine_subshell_occupancy3
    }
}

local iodine = Element.new{
    name = "Iodine",
    symbol = "I",
    number = 53,
    mass = 126.9045,
    group = 17,
    period = 5,
    oxidation_states = {-1, 1, 5, 7},
    electron_configuration = iodine_electron_configuration,
    electronegativity = 2.66,
    atomic_radius = 198,
    ionization_energy = 10.451,
    electron_affinity = 3.059,
    melting_point = 386.85,
    boiling_point = 457.55,
    density = 4.93,
    standard_state = "solid"
}

local astatine_subshell_occupancy1 = SubshellOccupancy.new{
    n = 4,
    l = "f",
    electron_count = 14
}

local astatine_subshell_occupancy2 = SubshellOccupancy.new{
    n = 5,
    l = "d",
    electron_count = 10
}

local astatine_subshell_occupancy3 = SubshellOccupancy.new{
    n = 6,
    l = "s",
    electron_count = 2
}

local astatine_subshell_occupancy4 = SubshellOccupancy.new{
    n = 6,
    l = "p",
    electron_count = 5
}

local astatine_electron_configuration = ElectronConfiguration.new{
    core = "Xe",
    subshell_occupancy = {
        astatine_subshell_occupancy1,
        astatine_subshell_occupancy2,
        astatine_subshell_occupancy3,
        astatine_subshell_occupancy4
    }
}

local astatine = Element.partial{
    name = "Astatine",
    symbol = "At",
    number = 85,
    mass = 209.98715,
    group = 17,
    period = 6,
    oxidation_states = {-1, 1, 3, 5, 7},
    electron_configuration = astatine_electron_configuration,
    electronegativity = 2.2,
    atomic_radius = 202,
    ionization_energy = 9.5,
    electron_affinity = 2.8,
    melting_point = 575,
    density = 7,
    standard_state = "solid"
}

local tennessine_subshell_occupancy1 = SubshellOccupancy.new{
    n = 7,
    l = "s",
    electron_count = 2
}

local tennessine_subshell_occupancy2 = SubshellOccupancy.new{
    n = 7,
    l = "p",
    electron_count = 5
}

local tennessine_subshell_occupancy3 = SubshellOccupancy.new{
    n = 5,
    l = "f",
    electron_count = 14
}

local tennessine_subshell_occupancy4 = SubshellOccupancy.new{
    n = 6,
    l = "d",
    electron_count = 10
}

local tennessine_electron_configuration = ElectronConfiguration.new{
    core = "Rn",
    subshell_occupancy = {
        tennessine_subshell_occupancy1,
        tennessine_subshell_occupancy2,
        tennessine_subshell_occupancy3,
        tennessine_subshell_occupancy4
    }
}

local tennessine = Element.partial{
    name = "Tennessine",
    symbol = "Ts",
    number = 117,
    mass = 294.211,
    group = 17,
    period = 7,
    oxidation_states = {-1, 1, 3, 5},
    electron_configuration = tennessine_electron_configuration,
    standard_state = "solid"
}

--- Elements of the Halogens family (group 7).
---@class Halogen: ElementSet
---@field fluorine Element
---@field chlorine Element
---@field bromine Element
---@field iodine Element
---@field astatine Element
---@field tennessine Element
local halogen = ElementSet.new(
    {fluorine, chlorine, bromine, iodine, astatine, tennessine},
    "Halogen"
)

return halogen
