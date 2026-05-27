local nonmetal = require("periodic-element.elements.nonmetal")
local OxidationStates = require("periodic-element.element.oxidation_states")
local test_elements = require("test.periodic-element.elements.test_elements")

local hydrogen_properties = {
    {"name", "Hydrogen"},
    {"symbol", "H"},
    {"number", 1},
    {"oxidation_states", OxidationStates.new{-1, 1}},
    {"mass", 1.008},
    {"group", 1},
    {"family", "nonmetal"},
    {"period", 1},
    {"block", 's'},
    {"electronegativity", 2.2},
    {"atomic_radius", 120},
    {"ionization_energy", 13.598},
    {"electron_affinity", 0.754},
    {"melting_point", 13.81},
    {"boiling_point", 20.28},
    {"density", 0.00008988},
    {"standard_state", "gas"},
}

local carbon_properties = {
    {"name", "Carbon"},
    {"symbol", "C"},
    {"number", 6},
    {"oxidation_states", OxidationStates.new{-4, 2, 4}},
    {"mass", 12.011},
    {"group", 14},
    {"family", "nonmetal"},
    {"period", 2},
    {"block", 'p'},
    {"electronegativity", 2.55},
    {"atomic_radius", 170},
    {"ionization_energy", 11.26},
    {"electron_affinity", 1.263},
    {"melting_point", 3823},
    {"boiling_point", 4098},
    {"density", 2.267},
    {"standard_state", "solid"},
}

local nitrogen_properties = {
    {"name", "Nitrogen"},
    {"symbol", "N"},
    {"number", 7},
    {"oxidation_states", OxidationStates.new{-3, -2, -1, 1, 2, 3, 4, 5}},
    {"mass", 14.007},
    {"group", 15},
    {"family", "nonmetal"},
    {"period", 2},
    {"block", 'p'},
    {"electronegativity", 3.04},
    {"atomic_radius", 155},
    {"ionization_energy", 14.534},
    {"electron_affinity", nil},
    {"melting_point", 63.15},
    {"boiling_point", 77.36},
    {"density", 0.0012506},
    {"standard_state", "gas"},
}

local oxygen_properties = {
    {"name", "Oxygen"},
    {"symbol", "O"},
    {"number", 8},
    {"oxidation_states", OxidationStates.new{-2}},
    {"mass", 15.999},
    {"group", 16},
    {"family", "nonmetal"},
    {"period", 2},
    {"block", 'p'},
    {"electronegativity", 3.44},
    {"atomic_radius", 152},
    {"ionization_energy", 13.618},
    {"electron_affinity", 1.461},
    {"melting_point", 54.36},
    {"boiling_point", 90.2},
    {"density", 0.001429},
    {"standard_state", "gas"},
}

local phosphorus_properties = {
    {"name", "Phosphorus"},
    {"symbol", "P"},
    {"number", 15},
    {"oxidation_states", OxidationStates.new{-3, 3, 5}},
    {"mass", 30.973762},
    {"group", 15},
    {"family", "nonmetal"},
    {"period", 3},
    {"block", 'p'},
    {"electronegativity", 2.19},
    {"atomic_radius", 180},
    {"ionization_energy", 10.487},
    {"electron_affinity", 0.746},
    {"melting_point", 317.3},
    {"boiling_point", 553.65},
    {"density", 1.82},
    {"standard_state", "solid"},
}

local sulfur_properties = {
    {"name", "Sulfur"},
    {"symbol", "S"},
    {"number", 16},
    {"oxidation_states", OxidationStates.new{-2, 4, 6}},
    {"mass", 32.066},
    {"group", 16},
    {"family", "nonmetal"},
    {"period", 3},
    {"block", 'p'},
    {"electronegativity", 2.58},
    {"atomic_radius", 180},
    {"ionization_energy", 10.36},
    {"electron_affinity", 2.077},
    {"melting_point", 388.36},
    {"boiling_point", 717.75},
    {"density", 2.067},
    {"standard_state", "solid"},
}

local selenium_properties = {
    {"name", "Selenium"},
    {"symbol", "Se"},
    {"number", 34},
    {"oxidation_states", OxidationStates.new{-2, 4, 6}},
    {"mass", 78.971},
    {"group", 16},
    {"family", "nonmetal"},
    {"period", 4},
    {"block", 'p'},
    {"electronegativity", 2.55},
    {"atomic_radius", 190},
    {"ionization_energy", 9.752},
    {"electron_affinity", 2.021},
    {"melting_point", 493.65},
    {"boiling_point", 958},
    {"density", 4.809},
    {"standard_state", "solid"},
}

describe("Nonmetal", function ()

    test('Nonmetal:name()returns "Nonmetal"', function ()
        assert.are.equal("Nonmetal", nonmetal:name(), 'Nonmetal:name() did not return "Nonmetal"')
    end)

    test(string.format("%s:length() returns 7", nonmetal:name()), function ()
        local alkali_metal_length = nonmetal:length()
        local fail_message = string.format("%s:length() did not return 7", nonmetal:name())
        assert.are.equal(7, alkali_metal_length, fail_message)
    end)

    test_elements(nonmetal.hydrogen, nonmetal, hydrogen_properties, describe, test, assert)
    test_elements(nonmetal.carbon, nonmetal, carbon_properties, describe, test, assert)
    test_elements(nonmetal.nitrogen, nonmetal, nitrogen_properties, describe, test, assert)
    test_elements(nonmetal.oxygen, nonmetal, oxygen_properties, describe, test, assert)
    test_elements(nonmetal.phosphorus, nonmetal, phosphorus_properties, describe, test, assert)
    test_elements(nonmetal.sulfur, nonmetal, sulfur_properties, describe, test, assert)
    test_elements(nonmetal.selenium, nonmetal, selenium_properties, describe, test, assert)
end)
