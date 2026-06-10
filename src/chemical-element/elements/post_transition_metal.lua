local Element = require("chemical-element.element")
local ElementSet = require("chemical-element.elements.element_set")
local ElectronConfiguration = require("chemical-element.element.electron_configuration")
local SubshellOccupancy = require("chemical-element.element.subshell_occupancy")

local aluminum_subshell_occupancy1 = SubshellOccupancy.new{
    n = 3,
    l = "s",
    electron_count = 2
}

local aluminum_subshell_occupancy2 = SubshellOccupancy.new{
    n = 3,
    l = "p",
    electron_count = 1
}

local aluminum_electron_configuration = ElectronConfiguration.new{
    core = "Ne",
    subshell_occupancy = {
        aluminum_subshell_occupancy1,
        aluminum_subshell_occupancy2
    }
}

local aluminum = Element.new{
    name = "Aluminum",
    symbol = "Al",
    number = 13,
    mass = 26.981538,
    group = 13,
    period = 3,
    oxidation_states = {3},
    electron_configuration = aluminum_electron_configuration,
    electronegativity = 1.61,
    atomic_radius = 184,
    ionization_energy = 5.986,
    electron_affinity = 0.441,
    melting_point = 933.437,
    boiling_point = 2792,
    density = 2.7,
    standard_state = "solid"
}

local zinc_subshell_occupancy1 = SubshellOccupancy.new{
    n = 3,
    l = "d",
    electron_count = 10
}

local zinc_subshell_occupancy2 = SubshellOccupancy.new{
    n = 4,
    l = "s",
    electron_count = 2
}

local zinc_electron_configuration = ElectronConfiguration.new{
    core = "Ar",
    subshell_occupancy = {
        zinc_subshell_occupancy1,
        zinc_subshell_occupancy2
    }
}

local zinc = Element.partial{
    name = "Zinc",
    symbol = "Zn",
    number = 30,
    mass = 65.38,
    group = 12,
    period = 4,
    oxidation_states = {2},
    electron_configuration = zinc_electron_configuration,
    electronegativity = 1.65,
    atomic_radius = 139,
    ionization_energy = 9.394,
    melting_point = 692.68,
    boiling_point = 1180,
    density = 7.134,
    standard_state = "solid"
}

local gallium_subshell_occupancy1 = SubshellOccupancy.new{
    n = 3,
    l = "d",
    electron_count = 10
}

local gallium_subshell_occupancy2 = SubshellOccupancy.new{
    n = 4,
    l = "s",
    electron_count = 2
}

local gallium_subshell_occupancy3 = SubshellOccupancy.new{
    n = 4,
    l = "p",
    electron_count = 1
}

local gallium_electron_configuration = ElectronConfiguration.new{
    core = "Ar",
    subshell_occupancy = {
        gallium_subshell_occupancy1,
        gallium_subshell_occupancy2,
        gallium_subshell_occupancy3
    }
}

local gallium = Element.new{
    name = "Gallium",
    symbol = "Ga",
    number = 31,
    mass = 69.723,
    group = 13,
    period = 4,
    oxidation_states = {3},
    electron_configuration = gallium_electron_configuration,
    electronegativity = 1.81,
    atomic_radius = 187,
    ionization_energy = 5.999,
    electron_affinity = 0.3,
    melting_point = 302.91,
    boiling_point = 2477,
    density = 5.91,
    standard_state = "solid"
}

local cadmium_subshell_occupancy1 = SubshellOccupancy.new{
    n = 4,
    l = "d",
    electron_count = 10
}

local cadmium_subshell_occupancy2 = SubshellOccupancy.new{
    n = 5,
    l = "s",
    electron_count = 2
}

local cadmium_electron_configuration = ElectronConfiguration.new{
    core = "Kr",
    subshell_occupancy = {
        cadmium_subshell_occupancy1,
        cadmium_subshell_occupancy2,
    }
}

local cadmium = Element.partial{
    name = "Cadmium",
    symbol = "Cd",
    number = 48,
    mass = 112.414,
    group = 12,
    period = 5,
    oxidation_states = {2},
    electron_configuration = cadmium_electron_configuration,
    electronegativity = 1.69,
    atomic_radius = 158,
    ionization_energy = 8.994,
    melting_point = 594.22,
    boiling_point = 1040,
    density = 8.69,
    standard_state = "solid"
}

local indium_subshell_occupancy1 = SubshellOccupancy.new{
    n = 4,
    l = "d",
    electron_count = 10
}

local indium_subshell_occupancy2 = SubshellOccupancy.new{
    n = 5,
    l = "s",
    electron_count = 2
}

local indium_subshell_occupancy3 = SubshellOccupancy.new{
    n = 5,
    l = "p",
    electron_count = 1
}

local indium_electron_configuration = ElectronConfiguration.new{
    core = "Kr",
    subshell_occupancy = {
        indium_subshell_occupancy1,
        indium_subshell_occupancy2,
        indium_subshell_occupancy3
    }
}

local indium = Element.new{
    name = "Indium",
    symbol = "In",
    number = 49,
    mass = 114.818,
    group = 13,
    period = 5,
    oxidation_states = {3},
    electron_configuration = indium_electron_configuration,
    electronegativity = 1.78,
    atomic_radius = 193,
    ionization_energy = 5.786,
    electron_affinity = 0.3,
    melting_point = 429.75,
    boiling_point = 2345,
    density = 7.31,
    standard_state = "solid"
}

local tin_subshell_occupancy1 = SubshellOccupancy.new{
    n = 4,
    l = "d",
    electron_count = 10
}

local tin_subshell_occupancy2 = SubshellOccupancy.new{
    n = 5,
    l = "s",
    electron_count = 2
}

local tin_subshell_occupancy3 = SubshellOccupancy.new{
    n = 5,
    l = "p",
    electron_count = 2
}

local tin_electron_configuration = ElectronConfiguration.new{
    core = "Kr",
    subshell_occupancy = {
        tin_subshell_occupancy1,
        tin_subshell_occupancy2,
        tin_subshell_occupancy3
    }
}

local tin = Element.new{
    name = "Tin",
    symbol = "Sn",
    number = 50,
    mass = 118.711,
    group = 14,
    period = 5,
    oxidation_states = {2, 4},
    electron_configuration = tin_electron_configuration,
    electronegativity = 1.96,
    atomic_radius = 217,
    ionization_energy = 7.344,
    electron_affinity = 1.2,
    melting_point = 505.08,
    boiling_point = 2875,
    density = 7.287,
    standard_state = "solid"
}

local mercury_subshell_occupancy1 = SubshellOccupancy.new{
    n = 4,
    l = "f",
    electron_count = 14
}

local mercury_subshell_occupancy2 = SubshellOccupancy.new{
    n = 5,
    l = "d",
    electron_count = 10
}

local mercury_subshell_occupancy3 = SubshellOccupancy.new{
    n = 6,
    l = "s",
    electron_count = 2
}

local mercury_electron_configuration = ElectronConfiguration.new{
    core = "Xe",
    subshell_occupancy = {
        mercury_subshell_occupancy1,
        mercury_subshell_occupancy2,
        mercury_subshell_occupancy3
    }
}

local mercury = Element.partial{
    name = "Mercury",
    symbol = "Hg",
    number = 80,
    mass = 200.592,
    group = 12,
    period = 6,
    oxidation_states = {1, 2},
    electron_configuration = mercury_electron_configuration,
    electronegativity = 2,
    atomic_radius = 209,
    ionization_energy = 10.438,
    melting_point = 234.32,
    boiling_point = 629.88,
    density = 13.5336,
    standard_state = "liquid"
}

local thallium_subshell_occupancy1 = SubshellOccupancy.new{
    n = 4,
    l = "f",
    electron_count = 14
}

local thallium_subshell_occupancy2 = SubshellOccupancy.new{
    n = 5,
    l = "d",
    electron_count = 10
}

local thallium_subshell_occupancy3 = SubshellOccupancy.new{
    n = 6,
    l = "s",
    electron_count = 2
}

local thallium_subshell_occupancy4 = SubshellOccupancy.new{
    n = 6,
    l = "p",
    electron_count = 1
}

local thallium_electron_configuration = ElectronConfiguration.new{
    core = "Xe",
    subshell_occupancy = {
        thallium_subshell_occupancy1,
        thallium_subshell_occupancy2,
        thallium_subshell_occupancy3,
        thallium_subshell_occupancy4
    }
}

local thallium = Element.new{
    name = "Thallium",
    symbol = "Tl",
    number = 81,
    mass = 204.383,
    group = 13,
    period = 6,
    oxidation_states = {1, 3},
    electron_configuration = thallium_electron_configuration,
    electronegativity = 1.62,
    atomic_radius = 196,
    ionization_energy = 6.108,
    electron_affinity = 0.2,
    melting_point = 577,
    boiling_point = 1746,
    density = 11.8,
    standard_state = "solid"
}

local lead_subshell_occupancy1 = SubshellOccupancy.new{
    n = 4,
    l = "f",
    electron_count = 14
}

local lead_subshell_occupancy2 = SubshellOccupancy.new{
    n = 5,
    l = "d",
    electron_count = 10
}

local lead_subshell_occupancy3 = SubshellOccupancy.new{
    n = 6,
    l = "s",
    electron_count = 2
}

local lead_subshell_occupancy4 = SubshellOccupancy.new{
    n = 6,
    l = "p",
    electron_count = 2
}

local lead_electron_configuration = ElectronConfiguration.new{
    core = "Xe",
    subshell_occupancy = {
        lead_subshell_occupancy1,
        lead_subshell_occupancy2,
        lead_subshell_occupancy3,
        lead_subshell_occupancy4
    }
}

local lead = Element.new{
    name = "Lead",
    symbol = "Pb",
    number = 82,
    mass = 207.2,
    group = 14,
    period = 6,
    oxidation_states = {2, 4},
    electron_configuration = lead_electron_configuration,
    electronegativity = 2.33,
    atomic_radius = 202,
    ionization_energy = 7.417,
    electron_affinity = 0.36,
    melting_point = 600.61,
    boiling_point = 2022,
    density = 11.342,
    standard_state = "solid"
}

local bismuth_subshell_occupancy1 = SubshellOccupancy.new{
    n = 4,
    l = "f",
    electron_count = 14
}

local bismuth_subshell_occupancy2 = SubshellOccupancy.new{
    n = 5,
    l = "d",
    electron_count = 10
}

local bismuth_subshell_occupancy3 = SubshellOccupancy.new{
    n = 6,
    l = "s",
    electron_count = 2
}

local bismuth_subshell_occupancy4 = SubshellOccupancy.new{
    n = 6,
    l = "p",
    electron_count = 3
}

local bismuth_electron_configuration = ElectronConfiguration.new{
    core = "Xe",
    subshell_occupancy = {
        bismuth_subshell_occupancy1,
        bismuth_subshell_occupancy2,
        bismuth_subshell_occupancy3,
        bismuth_subshell_occupancy4
    }
}

local bismuth = Element.new{
    name = "Bismuth",
    symbol = "Bi",
    number = 83,
    mass = 208.9804,
    group = 15,
    period = 6,
    oxidation_states = {3, 5},
    electron_configuration = bismuth_electron_configuration,
    electronegativity = 2.02,
    atomic_radius = 207,
    ionization_energy = 7.289,
    electron_affinity = 0.946,
    melting_point = 544.55,
    boiling_point = 1837,
    density = 9.807,
    standard_state = "solid"
}

local polonium_subshell_occupancy1 = SubshellOccupancy.new{
    n = 4,
    l = "f",
    electron_count = 14
}

local polonium_subshell_occupancy2 = SubshellOccupancy.new{
    n = 5,
    l = "d",
    electron_count = 10
}

local polonium_subshell_occupancy3 = SubshellOccupancy.new{
    n = 6,
    l = "s",
    electron_count = 2
}

local polonium_subshell_occupancy4 = SubshellOccupancy.new{
    n = 6,
    l = "p",
    electron_count = 4
}

local polonium_electron_configuration = ElectronConfiguration.new{
    core = "Xe",
    subshell_occupancy = {
        polonium_subshell_occupancy1,
        polonium_subshell_occupancy2,
        polonium_subshell_occupancy3,
        polonium_subshell_occupancy4
    }
}

local polonium = Element.new{
    name = "Polonium",
    symbol = "Po",
    number = 84,
    mass = 208.98243,
    group = 16,
    period = 6,
    oxidation_states = {2, 4},
    electron_configuration = polonium_electron_configuration,
    electronegativity = 2,
    atomic_radius = 197,
    ionization_energy = 8.417,
    electron_affinity = 1.9,
    melting_point = 527,
    boiling_point = 1235,
    density = 9.32,
    standard_state = "solid"
}

local copernicium_subshell_occupancy1 = SubshellOccupancy.new{
    n = 5,
    l = "f",
    electron_count = 14
}

local copernicium_subshell_occupancy2 = SubshellOccupancy.new{
    n = 6,
    l = "d",
    electron_count = 9
}

local copernicium_subshell_occupancy3 = SubshellOccupancy.new{
    n = 7,
    l = "s",
    electron_count = 2
}

local copernicium_electron_configuration = ElectronConfiguration.new{
    core = "Rn",
    subshell_occupancy = {
        copernicium_subshell_occupancy1,
        copernicium_subshell_occupancy2,
        copernicium_subshell_occupancy3
    }
}

local copernicium = Element.partial{
    name = "Copernicium",
    symbol = "Cn",
    number = 112,
    mass = 286.179,
    group = 12,
    period = 7,
    oxidation_states = {0, 1, 2},
    electron_configuration = copernicium_electron_configuration,
    standard_state = "solid"
}

local nihonium_subshell_occupancy1 = SubshellOccupancy.new{
    n = 5,
    l = "f",
    electron_count = 14
}

local nihonium_subshell_occupancy2 = SubshellOccupancy.new{
    n = 6,
    l = "d",
    electron_count = 10
}

local nihonium_subshell_occupancy3 = SubshellOccupancy.new{
    n = 7,
    l = "s",
    electron_count = 2
}

local nihonium_subshell_occupancy4 = SubshellOccupancy.new{
    n = 7,
    l = "p",
    electron_count = 1
}

local nihonium_electron_configuration = ElectronConfiguration.new{
    core = "Rn",
    subshell_occupancy = {
        nihonium_subshell_occupancy1,
        nihonium_subshell_occupancy2,
        nihonium_subshell_occupancy3,
        nihonium_subshell_occupancy4
    }
}

local nihonium = Element.partial{
    name = "Nihonium",
    symbol = "Nh",
    number = 113,
    mass = 286.182,
    group = 13,
    period = 7,
    electron_configuration = nihonium_electron_configuration,
    standard_state = "solid"
}

local flerovium_subshell_occupancy1 = SubshellOccupancy.new{
    n = 5,
    l = "f",
    electron_count = 14
}

local flerovium_subshell_occupancy2 = SubshellOccupancy.new{
    n = 6,
    l = "d",
    electron_count = 10
}

local flerovium_subshell_occupancy3 = SubshellOccupancy.new{
    n = 7,
    l = "s",
    electron_count = 2
}

local flerovium_subshell_occupancy4 = SubshellOccupancy.new{
    n = 7,
    l = "p",
    electron_count = 2
}

local flerovium_electron_configuration = ElectronConfiguration.new{
    core = "Rn",
    subshell_occupancy = {
        flerovium_subshell_occupancy1,
        flerovium_subshell_occupancy2,
        flerovium_subshell_occupancy3,
        flerovium_subshell_occupancy4
    }
}

local flerovium = Element.partial{
    name = "Flerovium",
    symbol = "Fl",
    number = 114,
    mass = 290.192,
    group = 14,
    period = 7,
    oxidation_states = {0, 1, 2, 4, 6},
    electron_configuration = flerovium_electron_configuration,
    standard_state = "solid"
}

local moscovium_subshell_occupancy1 = SubshellOccupancy.new{
    n = 5,
    l = "f",
    electron_count = 14
}

local moscovium_subshell_occupancy2 = SubshellOccupancy.new{
    n = 6,
    l = "d",
    electron_count = 10
}

local moscovium_subshell_occupancy3 = SubshellOccupancy.new{
    n = 7,
    l = "s",
    electron_count = 2
}

local moscovium_subshell_occupancy4 = SubshellOccupancy.new{
    n = 7,
    l = "p",
    electron_count = 3
}

local moscovium_electron_configuration = ElectronConfiguration.new{
    core = "Rn",
    subshell_occupancy = {
        moscovium_subshell_occupancy1,
        moscovium_subshell_occupancy2,
        moscovium_subshell_occupancy3,
        moscovium_subshell_occupancy4
    }
}

local moscovium = Element.partial{
    name = "Moscovium",
    symbol = "Mc",
    number = 115,
    mass = 290.196,
    group = 15,
    period = 7,
    oxidation_states = {1, 3},
    electron_configuration = moscovium_electron_configuration,
    standard_state = "solid"
}

local livermorium_subshell_occupancy1 = SubshellOccupancy.new{
    n = 5,
    l = "f",
    electron_count = 14
}

local livermorium_subshell_occupancy2 = SubshellOccupancy.new{
    n = 6,
    l = "d",
    electron_count = 10
}

local livermorium_subshell_occupancy3 = SubshellOccupancy.new{
    n = 7,
    l = "s",
    electron_count = 2
}

local livermorium_subshell_occupancy4 = SubshellOccupancy.new{
    n = 7,
    l = "p",
    electron_count = 4
}

local livermorium_electron_configuration = ElectronConfiguration.new{
    core = "Rn",
    subshell_occupancy = {
        livermorium_subshell_occupancy1,
        livermorium_subshell_occupancy2,
        livermorium_subshell_occupancy3,
        livermorium_subshell_occupancy4
    }
}

local livermorium = Element.partial{
    name = "Livermorium",
    symbol = "Lv",
    number = 116,
    mass = 293.205,
    group = 16,
    period = 7,
    oxidation_states = {-2, 2, 4},
    electron_configuration = livermorium_electron_configuration,
    standard_state = "solid"
}

--- Elements of the Post-transition Metals family.
---@class PostTransitionMetal: ElementSet
---@field aluminum Element
---@field zinc Element
---@field gallium Element
---@field cadmium Element
---@field indium Element
---@field tin Element
---@field mercury Element
---@field thallium Element
---@field lead Element
---@field bismuth Element
---@field polonium Element
---@field copernicium Element
---@field nihonium Element
---@field flerovium Element
---@field moscovium Element
---@field livermorium Element
local post_transition_metal = ElementSet.new(
    {aluminum, zinc, gallium, cadmium, indium, tin, mercury, thallium, lead,
    bismuth, polonium, copernicium, nihonium, flerovium, moscovium, livermorium},
    "PostTransitionMetal"
)

return post_transition_metal
