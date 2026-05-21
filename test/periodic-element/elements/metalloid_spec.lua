local metalloid = require("periodic-element.elements.metalloid")
local OxidationStates = require("periodic-element.element.oxidation_states")
local test_elements = require("test.periodic-element.elements.test_elements")

local boron_properties = {
    {"name", "Boron"},
    {"symbol", "B"},
    {"number", 5},
    {"oxidation_states", OxidationStates.new{3}},
    {"mass", 10.811},
    {"group", 13},
    {"family", "Metalloid"},
    {"period", 2},
    {"block", 'p'},
    {"electronegativity", 2.04},
    {"atomic_radius", 192},
    {"ionization_energy", 8.298},
    {"electron_affinity", 0.277},
    {"melting_point", 2348},
    {"boiling_point", 4273},
    {"density", 2.37},
    {"standard_state", "solid"},
}

local silicon_properties = {
    {"name", "Silicon"},
    {"symbol", "Si"},
    {"number", 14},
    {"oxidation_states", OxidationStates.new{-4, 2, 4}},
    {"mass", 28.085},
    {"group", 14},
    {"family", "Metalloid"},
    {"period", 3},
    {"block", 'p'},
    {"electronegativity", 1.9},
    {"atomic_radius", 210},
    {"ionization_energy", 8.152},
    {"electron_affinity", 1.385},
    {"melting_point", 1687},
    {"boiling_point", 3538},
    {"density", 2.3296},
    {"standard_state", "solid"},
}

local germanium_properties = {
    {"name", "Germanium"},
    {"symbol", "Ge"},
    {"number", 32},
    {"oxidation_states", OxidationStates.new{2, 4}},
    {"mass", 72.631},
    {"group", 14},
    {"family", "Metalloid"},
    {"period", 4},
    {"block", 'p'},
    {"electronegativity", 2.01},
    {"atomic_radius", 211},
    {"ionization_energy", 7.9},
    {"electron_affinity", 1.35},
    {"melting_point", 1211.4},
    {"boiling_point", 3106},
    {"density", 5.323},
    {"standard_state", "solid"},
}

local arsenic_properties = {
    {"name", "Arsenic"},
    {"symbol", "As"},
    {"number", 33},
    {"oxidation_states", OxidationStates.new{-3, 3, 5}},
    {"mass", 74.92159},
    {"group", 15},
    {"family", "Metalloid"},
    {"period", 4},
    {"block", 'p'},
    {"electronegativity", 2.18},
    {"atomic_radius", 185},
    {"ionization_energy", 9.815},
    {"electron_affinity", 0.81},
    {"melting_point", 1090},
    {"boiling_point", 887},
    {"density", 5.776},
    {"standard_state", "solid"},
}

local antimony_properties = {
    {"name", "Antimony"},
    {"symbol", "Sb"},
    {"number", 51},
    {"oxidation_states", OxidationStates.new{-3, 3, 5}},
    {"mass", 121.76},
    {"group", 15},
    {"family", "Metalloid"},
    {"period", 5},
    {"block", 'p'},
    {"electronegativity", 2.05},
    {"atomic_radius", 206},
    {"ionization_energy", 8.64},
    {"electron_affinity", 1.07},
    {"melting_point", 903.78},
    {"boiling_point", 1860},
    {"density", 6.685},
    {"standard_state", "solid"},
}

local tellurium_properties = {
    {"name", "Tellurium"},
    {"symbol", "Te"},
    {"number", 52},
    {"oxidation_states", OxidationStates.new{-2, 4, 6}},
    {"mass", 127.6},
    {"group", 16},
    {"family", "Metalloid"},
    {"period", 5},
    {"block", 'p'},
    {"electronegativity", 2.1},
    {"atomic_radius", 206},
    {"ionization_energy", 9.01},
    {"electron_affinity", 1.971},
    {"melting_point", 722.66},
    {"boiling_point", 1261},
    {"density", 6.232},
    {"standard_state", "solid"},
}

describe("Metalloid", function ()

    test('Metalloid:name()returns "Metalloid"', function ()
        assert.are.equal("Metalloid", metalloid:name(), 'Metalloid:name() did not return "Metalloid"')
    end)

    test(string.format("%s:length() returns 6", metalloid:name()), function ()
        local alkali_metal_length = metalloid:length()
        local fail_message = string.format("%s:length() did not return 6", metalloid:name())
        assert.are.equal(6, alkali_metal_length, fail_message)
    end)

    test_elements(metalloid.boron, metalloid, boron_properties, describe, test, assert)
    test_elements(metalloid.silicon, metalloid, silicon_properties, describe, test, assert)
    test_elements(metalloid.germanium, metalloid, germanium_properties, describe, test, assert)
    test_elements(metalloid.arsenic, metalloid, arsenic_properties, describe, test, assert)
    test_elements(metalloid.antimony, metalloid, antimony_properties, describe, test, assert)
    test_elements(metalloid.tellurium, metalloid, tellurium_properties, describe, test, assert)
end)
