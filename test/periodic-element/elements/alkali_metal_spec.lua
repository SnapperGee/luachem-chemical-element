local alkali_metal = require("periodic-element.elements.alkali_metal")
local OxidationStates = require("periodic-element.element.oxidation_states")
local test_elements = require("test.periodic-element.elements.test_elements")

local lithium_properties = {
    {"name", "Lithium"},
    {"symbol", "Li"},
    {"number", 3},
    {"oxidation_states", OxidationStates.new{1}},
    {"mass", 6.94},
    {"group", 1},
    {"family", "Alkali Metal"},
    {"period", 2},
    {"block", 's'},
    {"electronegativity", 0.98},
    {"atomic_radius", 182},
    {"ionization_energy", 5.392},
    {"electron_affinity", 0.618},
    {"melting_point", 453.65},
    {"boiling_point", 1615},
    {"density", 0.534},
    {"standard_state", "solid"},
}

local sodium_properties = {
    {"name", "Sodium"},
    {"symbol", "Na"},
    {"number", 11},
    {"oxidation_states", OxidationStates.new{1}},
    {"mass", 22.9897693},
    {"group", 1},
    {"family", "Alkali Metal"},
    {"period", 3},
    {"block", 's'},
    {"electronegativity", 0.93},
    {"atomic_radius", 227},
    {"ionization_energy", 5.139},
    {"electron_affinity", 0.548},
    {"melting_point", 370.95},
    {"boiling_point", 1156},
    {"density", 0.97},
    {"standard_state", "solid"},
}

local potassium_properties = {
    {"name", "Potassium"},
    {"symbol", "K"},
    {"number", 19},
    {"oxidation_states", OxidationStates.new{1}},
    {"mass", 39.0983},
    {"group", 1},
    {"family", "Alkali Metal"},
    {"period", 4},
    {"block", 's'},
    {"electronegativity", 0.82},
    {"atomic_radius", 275},
    {"ionization_energy", 4.341},
    {"electron_affinity", 0.501},
    {"melting_point", 336.53},
    {"boiling_point", 1032},
    {"density", 0.89},
    {"standard_state", "solid"},
}

local rubidium_properties = {
    {"name", "Rubidium"},
    {"symbol", "Rb"},
    {"number", 37},
    {"oxidation_states", OxidationStates.new{1}},
    {"mass", 85.468},
    {"group", 1},
    {"family", "Alkali Metal"},
    {"period", 5},
    {"block", 's'},
    {"electronegativity", 0.82},
    {"atomic_radius", 303},
    {"ionization_energy", 4.177},
    {"electron_affinity", 0.468},
    {"melting_point", 312.46},
    {"boiling_point", 961},
    {"density", 1.53},
    {"standard_state", "solid"},
}

local cesium_properties = {
    {"name", "Cesium"},
    {"symbol", "Cs"},
    {"number", 55},
    {"oxidation_states", OxidationStates.new{1}},
    {"mass", 132.90545196},
    {"group", 1},
    {"family", "Alkali Metal"},
    {"period", 6},
    {"block", 's'},
    {"electronegativity", 0.79},
    {"atomic_radius", 343},
    {"ionization_energy", 3.894},
    {"electron_affinity", 0.472},
    {"melting_point", 301.59},
    {"boiling_point", 944},
    {"density", 1.93},
    {"standard_state", "solid"},
}

local francium_properties = {
    {"name", "Francium"},
    {"symbol", "Fr"},
    {"number", 87},
    {"oxidation_states", OxidationStates.new{1}},
    {"mass", 223.01973},
    {"group", 1},
    {"family", "Alkali Metal"},
    {"period", 7},
    {"block", 's'},
    {"electronegativity", 0.7},
    {"atomic_radius", 348},
    {"ionization_energy", 3.9},
    {"electron_affinity", 0.47},
    {"melting_point", 300},
    {"boiling_point", nil},
    {"density", nil},
    {"standard_state", "solid"},
}

describe("AlkaliMetal", function ()

    test('AlkaliMetal:name()returns "AlkaliMetal"', function ()
        assert.are.equal("AlkaliMetal", alkali_metal:name(), 'AlkaliMetal:name() did not return "AlkaliMetal"')
    end)

    test(string.format("%s:length() returns 6", alkali_metal:name()), function ()
        local alkali_metal_length = alkali_metal:length()
        local fail_message = string.format("%s:length() did not return 6", alkali_metal:name())
        assert.are.equal(6, alkali_metal_length, fail_message)
    end)

    test_elements(alkali_metal.lithium, alkali_metal, lithium_properties, describe, test, assert)
    test_elements(alkali_metal.sodium, alkali_metal, sodium_properties, describe, test, assert)
    test_elements(alkali_metal.potassium, alkali_metal, potassium_properties, describe, test, assert)
    test_elements(alkali_metal.rubidium, alkali_metal, rubidium_properties, describe, test, assert)
    test_elements(alkali_metal.cesium, alkali_metal, cesium_properties, describe, test, assert)
    test_elements(alkali_metal.francium, alkali_metal, francium_properties, describe, test, assert)
end)
