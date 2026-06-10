local Element = require("chemical-element.element")
local ElementSet = require("chemical-element.elements.element_set")
local ElectronConfiguration = require("chemical-element.element.electron_configuration")
local SubshellOccupancy = require("chemical-element.element.subshell_occupancy")

local boron_subshell_occupancy1 = SubshellOccupancy.new{
    n = 2,
    l = "s",
    electron_count = 2
}

local boron_subshell_occupancy2 = SubshellOccupancy.new{
    n = 2,
    l = "p",
    electron_count = 1
}

local boron_electron_configuration = ElectronConfiguration.new{
    core = "He",
    subshell_occupancy = {
        boron_subshell_occupancy1,
        boron_subshell_occupancy2
    }
}

local boron = Element.new{
    name = "Boron",
    symbol = "B",
    number = 5,
    mass = 10.811,
    group = 13,
    period = 2,
    oxidation_states = {3},
    electron_configuration = boron_electron_configuration,
    electronegativity = 2.04,
    atomic_radius = 192,
    ionization_energy = 8.298,
    electron_affinity = 0.277,
    melting_point = 2348,
    boiling_point = 4273,
    density = 2.37,
    standard_state = "solid"
}

local silicon_subshell_occupancy1 = SubshellOccupancy.new{
    n = 3,
    l = "s",
    electron_count = 2
}

local silicon_subshell_occupancy2 = SubshellOccupancy.new{
    n = 3,
    l = "p",
    electron_count = 2
}

local silicon_electron_configuration = ElectronConfiguration.new{
    core = "Ne",
    subshell_occupancy = {
        silicon_subshell_occupancy1,
        silicon_subshell_occupancy2
    }
}

local silicon = Element.new{
    name = "Silicon",
    symbol = "Si",
    number = 14,
    mass = 28.085,
    group = 14,
    period = 3,
    oxidation_states = {-4, 2, 4},
    electron_configuration = silicon_electron_configuration,
    electronegativity = 1.9,
    atomic_radius = 210,
    ionization_energy = 8.152,
    electron_affinity = 1.385,
    melting_point = 1687,
    boiling_point = 3538,
    density = 2.3296,
    standard_state = "solid"
}

local germanium_subshell_occupancy1 = SubshellOccupancy.new{
    n = 3,
    l = "d",
    electron_count = 10
}

local germanium_subshell_occupancy2 = SubshellOccupancy.new{
    n = 4,
    l = "s",
    electron_count = 2
}

local germanium_subshell_occupancy3 = SubshellOccupancy.new{
    n = 4,
    l = "p",
    electron_count = 2
}

local germanium_electron_configuration = ElectronConfiguration.new{
    core = "Ar",
    subshell_occupancy = {
        germanium_subshell_occupancy1,
        germanium_subshell_occupancy2,
        germanium_subshell_occupancy3
    }
}

local germanium = Element.new{
    name = "Germanium",
    symbol = "Ge",
    number = 32,
    mass = 72.631,
    group = 14,
    period = 4,
    oxidation_states = {2, 4},
    electron_configuration = germanium_electron_configuration,
    electronegativity = 2.01,
    atomic_radius = 211,
    ionization_energy = 7.9,
    electron_affinity = 1.35,
    melting_point = 1211.4,
    boiling_point = 3106,
    density = 5.323,
    standard_state = "solid"
}

local arsenic_subshell_occupancy1 = SubshellOccupancy.new{
    n = 3,
    l = "d",
    electron_count = 10
}

local arsenic_subshell_occupancy2 = SubshellOccupancy.new{
    n = 4,
    l = "s",
    electron_count = 2
}

local arsenic_subshell_occupancy3 = SubshellOccupancy.new{
    n = 4,
    l = "p",
    electron_count = 3
}

local arsenic_electron_configuration = ElectronConfiguration.new{
    core = "Ar",
    subshell_occupancy = {
        arsenic_subshell_occupancy1,
        arsenic_subshell_occupancy2,
        arsenic_subshell_occupancy3
    }
}

local arsenic = Element.new{
    name = "Arsenic",
    symbol = "As",
    number = 33,
    mass = 74.92159,
    group = 15,
    period = 4,
    oxidation_states = {-3, 3, 5},
    electron_configuration = arsenic_electron_configuration,
    electron_affinity = 0.81,
    atomic_radius = 185,
    ionization_energy = 9.815,
    electronegativity = 2.18,
    melting_point = 1090,
    boiling_point = 887,
    density = 5.776,
    standard_state = "solid"
}

local antimony_subshell_occupancy1 = SubshellOccupancy.new{
    n = 4,
    l = "d",
    electron_count = 10
}

local antimony_subshell_occupancy2 = SubshellOccupancy.new{
    n = 5,
    l = "s",
    electron_count = 2
}

local antimony_subshell_occupancy3 = SubshellOccupancy.new{
    n = 5,
    l = "p",
    electron_count = 3
}

local antimony_electron_configuration = ElectronConfiguration.new{
    core = "Kr",
    subshell_occupancy = {
        antimony_subshell_occupancy1,
        antimony_subshell_occupancy2,
        antimony_subshell_occupancy3
    }
}

local antimony = Element.new{
    name = "Antimony",
    symbol = "Sb",
    number = 51,
    mass = 121.760,
    group = 15,
    period = 5,
    oxidation_states = {-3, 3, 5},
    electron_configuration = antimony_electron_configuration,
    electronegativity = 2.05,
    atomic_radius = 206,
    ionization_energy = 8.64,
    electron_affinity = 1.07,
    melting_point = 903.78,
    boiling_point = 1860,
    density = 6.685,
    standard_state = "solid"
}

local tellurium_subshell_occupancy1 = SubshellOccupancy.new{
    n = 4,
    l = "d",
    electron_count = 10
}

local tellurium_subshell_occupancy2 = SubshellOccupancy.new{
    n = 5,
    l = "s",
    electron_count = 2
}

local tellurium_subshell_occupancy3 = SubshellOccupancy.new{
    n = 5,
    l = "p",
    electron_count = 4
}

local tellurium_electron_configuration = ElectronConfiguration.new{
    core = "Kr",
    subshell_occupancy = {
        tellurium_subshell_occupancy1,
        tellurium_subshell_occupancy2,
        tellurium_subshell_occupancy3
    }
}

local tellurium = Element.new{
    name = "Tellurium",
    symbol = "Te",
    number = 52,
    mass = 127.6,
    group = 16,
    period = 5,
    oxidation_states = {-2, 4, 6},
    electron_configuration = tellurium_electron_configuration,
    electron_affinity = 1.971,
    atomic_radius = 206,
    ionization_energy = 9.01,
    electronegativity = 2.1,
    melting_point = 722.66,
    boiling_point = 1261,
    density = 6.232,
    standard_state = "solid"
}

--- Elements of the Metalloid family.
---@class Metalloid: ElementSet
---@field boron Element
---@field silicon Element
---@field germanium Element
---@field arsenic Element
---@field antimony Element
---@field tellurium Element
local metalloid = ElementSet.new(
    {boron, silicon, germanium, arsenic, antimony, tellurium},
    "Metalloid"
)

return metalloid
