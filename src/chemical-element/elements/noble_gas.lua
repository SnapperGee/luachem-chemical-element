local Element = require("chemical-element.element")
local ElementSet = require("chemical-element.elements.element_set")
local ElectronConfiguration = require("chemical-element.element.electron_configuration")
local SubshellOccupancy = require("chemical-element.element.subshell_occupancy")

local helium_subshell_occupancy = SubshellOccupancy.new{
    n = 2,
    l = "s",
    electron_count = 2
}

local helium_electron_configuration = ElectronConfiguration.new{
    subshell_occupancy = { helium_subshell_occupancy }
}

local helium = Element.partial{
    name = "Helium",
    symbol = "He",
    number = 2,
    mass = 4.0026,
    group = 18,
    period = 1,
    oxidation_states = {0},
    electron_configuration = helium_electron_configuration,
    atomic_radius = 140,
    ionization_energy = 24.587,
    melting_point = 0.95,
    boiling_point = 4.22,
    density = 0.0001785,
    standard_state = "gas"
}

local neon_subshell_occupancy1 = SubshellOccupancy.new{
    n = 2,
    l = "s",
    electron_count = 2
}

local neon_subshell_occupancy2 = SubshellOccupancy.new{
    n = 2,
    l = "p",
    electron_count = 6
}

local neon_electron_configuration = ElectronConfiguration.new{
    core = "He",
    subshell_occupancy = {
        neon_subshell_occupancy1,
        neon_subshell_occupancy2
    }
}

local neon = Element.partial{
    name = "Neon",
    symbol = "Ne",
    number = 10,
    mass = 20.180,
    group = 18,
    period = 2,
    oxidation_states = {0},
    electron_configuration = neon_electron_configuration,
    atomic_radius = 154,
    ionization_energy = 21.565,
    melting_point = 24.56,
    boiling_point = 27.07,
    density = 0.0008999,
    standard_state = "gas"
}

local argon_subshell_occupancy1 = SubshellOccupancy.new{
    n = 3,
    l = "s",
    electron_count = 2
}

local argon_subshell_occupancy2 = SubshellOccupancy.new{
    n = 3,
    l = "p",
    electron_count = 6
}

local argon_electron_configuration = ElectronConfiguration.new{
    core = "Ne",
    subshell_occupancy = {
        argon_subshell_occupancy1,
        argon_subshell_occupancy2
    }
}

local argon = Element.partial{
    name = "Argon",
    symbol = "Ar",
    number = 18,
    mass = 39.948,
    group = 18,
    period = 3,
    oxidation_states = {0},
    electron_configuration = argon_electron_configuration,
    atomic_radius = 188,
    ionization_energy = 15.76,
    melting_point = 83.8,
    boiling_point = 87.3,
    density = 0.0017837,
    standard_state = "gas"
}

local krypton_subshell_occupancy1 = SubshellOccupancy.new{
    n = 3,
    l = "d",
    electron_count = 10
}

local krypton_subshell_occupancy2 = SubshellOccupancy.new{
    n = 4,
    l = "s",
    electron_count = 2
}

local krypton_subshell_occupancy3 = SubshellOccupancy.new{
    n = 4,
    l = "p",
    electron_count = 6
}

local krypton_electron_configuration = ElectronConfiguration.new{
    core = "Ar",
    subshell_occupancy = {
        krypton_subshell_occupancy1,
        krypton_subshell_occupancy2,
        krypton_subshell_occupancy3
    }
}

local krypton = Element.partial{
    name = "Krypton",
    symbol = "Kr",
    number = 36,
    mass = 83.798,
    group = 18,
    period = 4,
    oxidation_states = {0},
    electron_configuration = krypton_electron_configuration,
    electronegativity = 3,
    atomic_radius = 202,
    ionization_energy = 14,
    melting_point = 115.79,
    boiling_point = 119.93,
    density = 0.003733,
    standard_state = "gas"
}

local xenon_subshell_occupancy1 = SubshellOccupancy.new{
    n = 4,
    l = "d",
    electron_count = 10
}

local xenon_subshell_occupancy2 = SubshellOccupancy.new{
    n = 5,
    l = "s",
    electron_count = 2
}

local xenon_subshell_occupancy3 = SubshellOccupancy.new{
    n = 5,
    l = "p",
    electron_count = 6
}

local xenon_electron_configuration = ElectronConfiguration.new{
    core = "Kr",
    subshell_occupancy = {
        xenon_subshell_occupancy1,
        xenon_subshell_occupancy2,
        xenon_subshell_occupancy3
    }
}

local xenon = Element.partial{
    name = "Xenon",
    symbol = "Xe",
    number = 54,
    mass = 131.293,
    group = 18,
    period = 5,
    oxidation_states = {0},
    electron_configuration = xenon_electron_configuration,
    electronegativity = 2.6,
    atomic_radius = 216,
    ionization_energy = 12.13,
    melting_point = 161.36,
    boiling_point = 165.03,
    density = 0.005887,
    standard_state = "gas"
}

local radon_subshell_occupancy1 = SubshellOccupancy.new{
    n = 4,
    l = "f",
    electron_count = 14
}

local radon_subshell_occupancy2 = SubshellOccupancy.new{
    n = 5,
    l = "d",
    electron_count = 10
}

local radon_subshell_occupancy3 = SubshellOccupancy.new{
    n = 6,
    l = "s",
    electron_count = 2
}

local radon_subshell_occupancy4 = SubshellOccupancy.new{
    n = 6,
    l = "p",
    electron_count = 6
}

local radon_electron_configuration = ElectronConfiguration.new{
    core = "Xe",
    subshell_occupancy = {
        radon_subshell_occupancy1,
        radon_subshell_occupancy2,
        radon_subshell_occupancy3,
        radon_subshell_occupancy4
    }
}

local radon = Element.partial{
    name = "Radon",
    symbol = "Rn",
    number = 86,
    mass = 222.01758,
    group = 18,
    period = 6,
    oxidation_states = {0},
    electron_configuration = radon_electron_configuration,
    atomic_radius = 220,
    ionization_energy = 10.745,
    melting_point = 202,
    boiling_point = 211.45,
    density = 0.00973,
    standard_state = "gas"
}

local oganesson_subshell_occupancy1 = SubshellOccupancy.new{
    n = 7,
    l = "s",
    electron_count = 2
}

local oganesson_subshell_occupancy2 = SubshellOccupancy.new{
    n = 7,
    l = "p",
    electron_count = 6
}

local oganesson_subshell_occupancy3 = SubshellOccupancy.new{
    n = 5,
    l = "f",
    electron_count = 14
}

local oganesson_subshell_occupancy4 = SubshellOccupancy.new{
    n = 6,
    l = "d",
    electron_count = 10
}

local oganesson_electron_configuration = ElectronConfiguration.new{
    core = "Rn",
    subshell_occupancy = {
        oganesson_subshell_occupancy1,
        oganesson_subshell_occupancy2,
        oganesson_subshell_occupancy3,
        oganesson_subshell_occupancy4
    }
}

local oganesson = Element.partial{
    name = "oganesson",
    symbol = "Og",
    number = 118,
    mass = 295.216,
    group = 18,
    period = 7,
    oxidation_states = {-1, 0, 1, 2, 4, 6},
    electron_configuration = oganesson_electron_configuration,
    standard_state = "gas"
}

--- Elements of the Noble Gas family (group 8).
---@class NobleGas: ElementSet
---@field helium Element
---@field neon Element
---@field argon Element
---@field krypton Element
---@field xenon Element
---@field radon Element
---@field oganesson Element
local noble_gas = ElementSet.new(
    {helium, neon, argon, krypton, xenon, radon, oganesson},
    "NobleGas"
)

return noble_gas
