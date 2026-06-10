local Element = require("chemical-element.element")
local ElementSet = require("chemical-element.elements.element_set")
local ElectronConfiguration = require("chemical-element.element.electron_configuration")
local SubshellOccupancy = require("chemical-element.element.subshell_occupancy")

local lanthanum_subshell_occupancy1 = SubshellOccupancy.new{
    n = 5,
    l = "d",
    electron_count = 1
}

local lanthanum_subshell_occupancy2 = SubshellOccupancy.new{
    n = 6,
    l = "s",
    electron_count = 2
}

local lanthanum_electron_configuration = ElectronConfiguration.new{
    core = "Xe",
    subshell_occupancy = {
        lanthanum_subshell_occupancy1,
        lanthanum_subshell_occupancy2
    }
}

local lanthanum = Element.new{
    name = "Lanthanum",
    symbol = "La",
    number = 57,
    mass = 138.9055,
    group = nil,
    period = 6,
    oxidation_states = {3},
    electron_configuration = lanthanum_electron_configuration,
    electronegativity = 1.1,
    atomic_radius = 240,
    ionization_energy = 5.577,
    electron_affinity = 0.5,
    melting_point = 1191,
    boiling_point = 3737,
    density = 6.15,
    standard_state = "solid"
}

local cerium_subshell_occupancy1 = SubshellOccupancy.new{
    n = 4,
    l = "f",
    electron_count = 1
}

local cerium_subshell_occupancy2 = SubshellOccupancy.new{
    n = 5,
    l = "d",
    electron_count = 1
}

local cerium_subshell_occupancy3 = SubshellOccupancy.new{
    n = 6,
    l = "s",
    electron_count = 2
}

local cerium_electron_configuration = ElectronConfiguration.new{
    core = "Xe",
    subshell_occupancy = {
        cerium_subshell_occupancy1,
        cerium_subshell_occupancy2,
        cerium_subshell_occupancy3
    }
}

local cerium = Element.new{
    name = "Cerium",
    symbol = "Ce",
    number = 58,
    mass = 140.116,
    group = nil,
    period = 6,
    oxidation_states = {3, 4},
    electron_configuration = cerium_electron_configuration,
    electronegativity = 1.12,
    atomic_radius = 235,
    ionization_energy = 5.539,
    electron_affinity = 0.5,
    melting_point = 1071,
    boiling_point = 3697,
    density = 6.77,
    standard_state = "solid"
}

local praseodymium_subshell_occupancy1 = SubshellOccupancy.new{
    n = 4,
    l = "f",
    electron_count = 3
}

local praseodymium_subshell_occupancy2 = SubshellOccupancy.new{
    n = 6,
    l = "s",
    electron_count = 2
}

local praseodymium_electron_configuration = ElectronConfiguration.new{
    core = "Xe",
    subshell_occupancy = {
        praseodymium_subshell_occupancy1,
        praseodymium_subshell_occupancy2
    }
}

local praseodymium = Element.partial{
    name = "Praseodymium",
    symbol = "Pr",
    number = 59,
    mass = 140.90766,
    group = nil,
    period = 6,
    oxidation_states = {3},
    electron_configuration = praseodymium_electron_configuration,
    electronegativity = 1.13,
    atomic_radius = 239,
    ionization_energy = 5.464,
    melting_point = 1204,
    boiling_point = 3793,
    density = 6.77,
    standard_state = "solid"
}

local neodymium_subshell_occupancy1 = SubshellOccupancy.new{
    n = 4,
    l = "f",
    electron_count = 4
}

local neodymium_subshell_occupancy2 = SubshellOccupancy.new{
    n = 6,
    l = "s",
    electron_count = 2
}

local neodymium_electron_configuration = ElectronConfiguration.new{
    core = "Xe",
    subshell_occupancy = {
        neodymium_subshell_occupancy1,
        neodymium_subshell_occupancy2
    }
}

local neodymium = Element.partial{
    name = "Neodymium",
    symbol = "Nd",
    number = 60,
    mass = 144.243,
    group = nil,
    period = 6,
    oxidation_states = {3},
    electron_configuration = neodymium_electron_configuration,
    electronegativity = 1.14,
    atomic_radius = 229,
    ionization_energy = 5.525,
    melting_point = 1294,
    boiling_point = 3347,
    density = 7.01,
    standard_state = "solid"
}

local promethium_subshell_occupancy1 = SubshellOccupancy.new{
    n = 4,
    l = "f",
    electron_count = 5
}

local promethium_subshell_occupancy2 = SubshellOccupancy.new{
    n = 6,
    l = "s",
    electron_count = 2
}

local promethium_electron_configuration = ElectronConfiguration.new{
    core = "Xe",
    subshell_occupancy = {
        promethium_subshell_occupancy1,
        promethium_subshell_occupancy2
    }
}

local promethium = Element.partial{
    name = "Promethium",
    symbol = "Pm",
    number = 61,
    mass = 144.91276,
    group = nil,
    period = 6,
    oxidation_states = {3},
    electron_configuration = promethium_electron_configuration,
    atomic_radius = 236,
    ionization_energy = 5.55,
    melting_point = 1315,
    boiling_point = 3273,
    density = 7.26,
    standard_state = "solid"
}

local samarium_subshell_occupancy1 = SubshellOccupancy.new{
    n = 4,
    l = "f",
    electron_count = 6
}

local samarium_subshell_occupancy2 = SubshellOccupancy.new{
    n = 6,
    l = "s",
    electron_count = 2
}

local samarium_electron_configuration = ElectronConfiguration.new{
    core = "Xe",
    subshell_occupancy = {
        samarium_subshell_occupancy1,
        samarium_subshell_occupancy2
    }
}

local samarium = Element.partial{
    name = "Samarium",
    symbol = "Sm",
    number = 62,
    mass = 150.36,
    group = nil,
    period = 6,
    oxidation_states = {2, 3},
    electron_configuration = samarium_electron_configuration,
    electronegativity = 1.17,
    atomic_radius = 229,
    ionization_energy = 5.644,
    melting_point = 1347,
    boiling_point = 2067,
    density = 7.52,
    standard_state = "solid"
}

local europium_subshell_occupancy1 = SubshellOccupancy.new{
    n = 4,
    l = "f",
    electron_count = 7
}

local europium_subshell_occupancy2 = SubshellOccupancy.new{
    n = 6,
    l = "s",
    electron_count = 2
}

local europium_electron_configuration = ElectronConfiguration.new{
    core = "Xe",
    subshell_occupancy = {
        europium_subshell_occupancy1,
        europium_subshell_occupancy2
    }
}

local europium = Element.partial{
    name = "Europium",
    symbol = "Eu",
    number = 63,
    mass = 151.964,
    group = nil,
    period = 6,
    oxidation_states = {2, 3},
    electron_configuration = europium_electron_configuration,
    atomic_radius = 233,
    ionization_energy = 5.67,
    melting_point = 1095,
    boiling_point = 1802,
    density = 5.24,
    standard_state = "solid"
}

local gadolinium_subshell_occupancy1 = SubshellOccupancy.new{
    n = 4,
    l = "f",
    electron_count = 7
}

local gadolinium_subshell_occupancy2 = SubshellOccupancy.new{
    n = 5,
    l = "d",
    electron_count = 1
}

local gadolinium_subshell_occupancy3 = SubshellOccupancy.new{
    n = 6,
    l = "s",
    electron_count = 2
}

local gadolinium_electron_configuration = ElectronConfiguration.new{
    core = "Xe",
    subshell_occupancy = {
        gadolinium_subshell_occupancy1,
        gadolinium_subshell_occupancy2,
        gadolinium_subshell_occupancy3
    }
}

local gadolinium = Element.partial{
    name = "Gadolinium",
    symbol = "Gd",
    number = 64,
    mass = 157.25,
    group = nil,
    period = 6,
    oxidation_states = {3},
    electron_configuration = gadolinium_electron_configuration,
    electronegativity = 1.2,
    atomic_radius = 237,
    ionization_energy = 6.15,
    melting_point = 1586,
    boiling_point = 3546,
    density = 7.9,
    standard_state = "solid"
}

local terbium_subshell_occupancy1 = SubshellOccupancy.new{
    n = 4,
    l = "f",
    electron_count = 9
}

local terbium_subshell_occupancy2 = SubshellOccupancy.new{
    n = 6,
    l = "s",
    electron_count = 2
}

local terbium_electron_configuration = ElectronConfiguration.new{
    core = "Xe",
    subshell_occupancy = {
        terbium_subshell_occupancy1,
        terbium_subshell_occupancy2
    }
}

local terbium = Element.partial{
    name = "Terbium",
    symbol = "Tb",
    number = 65,
    mass = 158.92535,
    group = nil,
    period = 6,
    oxidation_states = {3},
    electron_configuration = terbium_electron_configuration,
    atomic_radius = 221,
    ionization_energy = 5.864,
    melting_point = 1629,
    boiling_point = 3503,
    density = 8.23,
    standard_state = "solid"
}

local dysprosium_subshell_occupancy1 = SubshellOccupancy.new{
    n = 4,
    l = "f",
    electron_count = 10
}

local dysprosium_subshell_occupancy2 = SubshellOccupancy.new{
    n = 6,
    l = "s",
    electron_count = 2
}

local dysprosium_electron_configuration = ElectronConfiguration.new{
    core = "Xe",
    subshell_occupancy = {
        dysprosium_subshell_occupancy1,
        dysprosium_subshell_occupancy2
    }
}

local dysprosium = Element.partial{
    name = "Dysprosium",
    symbol = "Dy",
    number = 66,
    mass = 162.5,
    group = nil,
    period = 6,
    oxidation_states = {3},
    electron_configuration = dysprosium_electron_configuration,
    electronegativity = 1.22,
    atomic_radius = 229,
    ionization_energy = 5.939,
    melting_point = 1685,
    boiling_point = 2840,
    density = 8.55,
    standard_state = "solid"
}

local holmium_subshell_occupancy1 = SubshellOccupancy.new{
    n = 4,
    l = "f",
    electron_count = 11
}

local holmium_subshell_occupancy2 = SubshellOccupancy.new{
    n = 6,
    l = "s",
    electron_count = 2
}

local holmium_electron_configuration = ElectronConfiguration.new{
    core = "Xe",
    subshell_occupancy = {
        holmium_subshell_occupancy1,
        holmium_subshell_occupancy2
    }
}

local holmium = Element.partial{
    name = "Holmium",
    symbol = "Ho",
    number = 67,
    mass = 164.93033,
    group = nil,
    period = 6,
    oxidation_states = {3},
    electron_configuration = holmium_electron_configuration,
    electronegativity = 1.23,
    atomic_radius = 216,
    ionization_energy = 6.022,
    melting_point = 1747,
    boiling_point = 2973,
    density = 8.8,
    standard_state = "solid"
}

local erbium_subshell_occupancy1 = SubshellOccupancy.new{
    n = 4,
    l = "f",
    electron_count = 12
}

local erbium_subshell_occupancy2 = SubshellOccupancy.new{
    n = 6,
    l = "s",
    electron_count = 2
}

local erbium_electron_configuration = ElectronConfiguration.new{
    core = "Xe",
    subshell_occupancy = {
        erbium_subshell_occupancy1,
        erbium_subshell_occupancy2
    }
}

local erbium = Element.partial{
    name = "Erbium",
    symbol = "Er",
    number = 68,
    mass = 167.259,
    group = nil,
    period = 6,
    oxidation_states = {3},
    electron_configuration = erbium_electron_configuration,
    electronegativity = 1.24,
    atomic_radius = 235,
    ionization_energy = 6.108,
    melting_point = 1802,
    boiling_point = 3141,
    density = 9.07,
    standard_state = "solid"
}

local thulium_subshell_occupancy1 = SubshellOccupancy.new{
    n = 4,
    l = "f",
    electron_count = 13
}

local thulium_subshell_occupancy2 = SubshellOccupancy.new{
    n = 6,
    l = "s",
    electron_count = 2
}

local thulium_electron_configuration = ElectronConfiguration.new{
    core = "Xe",
    subshell_occupancy = {
        thulium_subshell_occupancy1,
        thulium_subshell_occupancy2
    }
}

local thulium = Element.partial{
    name = "Thulium",
    symbol = "Tm",
    number = 69,
    mass = 168.93422,
    group = nil,
    period = 6,
    oxidation_states = {3},
    electron_configuration = thulium_electron_configuration,
    electronegativity = 1.25,
    atomic_radius = 227,
    ionization_energy = 6.184,
    melting_point = 1818,
    boiling_point = 2223,
    density = 9.32,
    standard_state = "solid"
}

local ytterbium_subshell_occupancy1 = SubshellOccupancy.new{
    n = 4,
    l = "f",
    electron_count = 14
}

local ytterbium_subshell_occupancy2 = SubshellOccupancy.new{
    n = 6,
    l = "s",
    electron_count = 2
}

local ytterbium_electron_configuration = ElectronConfiguration.new{
    core = "Xe",
    subshell_occupancy = {
        ytterbium_subshell_occupancy1,
        ytterbium_subshell_occupancy2
    }
}

local ytterbium = Element.partial{
    name = "Ytterbium",
    symbol = "Yb",
    number = 70,
    mass = 173.055,
    group = nil,
    period = 6,
    oxidation_states = {2, 3},
    electron_configuration = ytterbium_electron_configuration,
    atomic_radius = 242,
    ionization_energy = 6.254,
    melting_point = 1092,
    boiling_point = 1469,
    density = 6.9,
    standard_state = "solid"
}

--- Elements of the Lanthanide family.
---@class Lanthanide: ElementSet
---@field lanthanum Element
---@field cerium Element
---@field praseodymium Element
---@field neodymium Element
---@field promethium Element
---@field samarium Element
---@field europium Element
---@field gadolinium Element
---@field terbium Element
---@field dysprosium Element
---@field holmium Element
---@field erbium Element
---@field thulium Element
---@field ytterbium Element
local lanthanide = ElementSet.new(
    {lanthanum, cerium, praseodymium, neodymium, promethium, samarium, europium,
    gadolinium, terbium, dysprosium, holmium, erbium, thulium, ytterbium},
    "Lanthanide"
)

return lanthanide
