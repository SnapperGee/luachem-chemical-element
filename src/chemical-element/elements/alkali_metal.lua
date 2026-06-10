local Element = require("chemical-element.element")
local ElementSet = require("chemical-element.elements.element_set")
local ElectronConfiguration = require("chemical-element.element.electron_configuration")
local SubshellOccupancy = require("chemical-element.element.subshell_occupancy")

local lithium_subshell_occupancy = SubshellOccupancy.new{
    n = 2,
    l = "s",
    electron_count = 1
}

local lithium_electron_configuration = ElectronConfiguration.new{
    core = "He",
    subshell_occupancy = { lithium_subshell_occupancy }
}

local lithium = Element.new{
    name = "Lithium",
    symbol = "Li",
    number = 3,
    mass = 6.94,
    group = 1,
    period = 2,
    oxidation_states = {1},
    electron_configuration = lithium_electron_configuration,
    electronegativity = 0.98,
    atomic_radius = 182,
    ionization_energy = 5.392,
    electron_affinity = 0.618,
    melting_point = 453.65,
    boiling_point = 1615,
    density = 0.534,
    standard_state = "solid"
}

local sodium_subshell_occupancy = SubshellOccupancy.new{
    n = 3,
    l = "s",
    electron_count = 1
}

local sodium_electron_configuration = ElectronConfiguration.new{
    core = "Ne",
    subshell_occupancy = { sodium_subshell_occupancy }
}

local sodium = Element.new{
    name = "Sodium",
    symbol = "Na",
    number = 11,
    mass = 22.9897693,
    group = 1,
    period = 3,
    oxidation_states = {1},
    electron_configuration = sodium_electron_configuration,
    electronegativity = 0.93,
    atomic_radius = 227,
    ionization_energy = 5.139,
    electron_affinity = 0.548,
    melting_point = 370.95,
    boiling_point = 1156,
    density = 0.97,
    standard_state = "solid"
}

local potassium_subshell_occupancy = SubshellOccupancy.new{
    n = 4,
    l = "s",
    electron_count = 1
}

local potassium_electron_configuration = ElectronConfiguration.new{
    core = "Ar",
    subshell_occupancy = { potassium_subshell_occupancy }
}

local potassium = Element.new{
    name = "Potassium",
    symbol = "K",
    number = 19,
    mass = 39.0983,
    group = 1,
    period = 4,
    oxidation_states = {1},
    electron_configuration = potassium_electron_configuration,
    electronegativity = 0.82,
    atomic_radius = 275,
    ionization_energy = 4.341,
    electron_affinity = 0.501,
    melting_point = 336.53,
    boiling_point = 1032,
    density = 0.89,
    standard_state = "solid"
}

local rubidium_subshell_occupancy = SubshellOccupancy.new{
    n = 5,
    l = "s",
    electron_count = 1
}

local rubidium_electron_configuration = ElectronConfiguration.new{
    core = "Kr",
    subshell_occupancy = { rubidium_subshell_occupancy }
}

local rubidium = Element.new{
    name = "Rubidium",
    symbol = "Rb",
    number = 37,
    mass = 85.468,
    group = 1,
    period = 5,
    oxidation_states = {1},
    electron_configuration = rubidium_electron_configuration,
    electronegativity = 0.82,
    atomic_radius = 303,
    ionization_energy = 4.177,
    electron_affinity = 0.468,
    melting_point = 312.46,
    boiling_point = 961,
    density = 1.53,
    standard_state = "solid"
}

local cesium_subshell_occupancy = SubshellOccupancy.new{
    n = 6,
    l = "s",
    electron_count = 1
}

local cesium_electron_configuration = ElectronConfiguration.new{
    core = "Xe",
    subshell_occupancy = { cesium_subshell_occupancy }
}

local cesium = Element.new{
    name = "Cesium",
    symbol = "Cs",
    number = 55,
    mass = 132.90545196,
    group = 1,
    period = 6,
    oxidation_states = {1},
    electron_configuration = cesium_electron_configuration,
    electronegativity = 0.79,
    atomic_radius = 343,
    ionization_energy = 3.894,
    electron_affinity = 0.472,
    melting_point = 301.59,
    boiling_point = 944,
    density = 1.93,
    standard_state = "solid"
}

local francium_subshell_occupancy = SubshellOccupancy.new{
    n = 7,
    l = "s",
    electron_count = 1
}

local francium_electron_configuration = ElectronConfiguration.new{
    core = "Rn",
    subshell_occupancy = { francium_subshell_occupancy }
}

local francium = Element.partial{
    name = "Francium",
    symbol = "Fr",
    number = 87,
    mass = 223.01973,
    group = 1,
    period = 7,
    oxidation_states = {1},
    electron_configuration = francium_electron_configuration,
    electronegativity = 0.7,
    atomic_radius = 348,
    ionization_energy = 3.9,
    electron_affinity = 0.47,
    melting_point = 300,
    standard_state = "solid"
}

--- Elements of the Alkali Metals family (group 1).
---@class AlkaliMetals: ElementSet
---@field lithium Element
---@field sodium Element
---@field potassium Element
---@field rubidium Element
---@field cesium Element
---@field francium Element
local alkali_metal = ElementSet.new(
    {lithium, sodium, potassium, rubidium, cesium, francium},
    "AlkaliMetal"
)

return alkali_metal
