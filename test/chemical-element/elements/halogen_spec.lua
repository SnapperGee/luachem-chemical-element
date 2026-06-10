local halogen_gas = require("chemical-element.elements.halogen")
local OxidationStates = require("chemical-element.element.oxidation_states")
local test_elements = require("test.chemical-element.elements.test_elements")

local fluorine_properties = {
    {"name", "Fluorine"},
    {"symbol", "F"},
    {"number", 9},
    {"oxidation_states", OxidationStates.new{-1}},
    {"mass", 18.99840316},
    {"group", 17},
    {"family", "halogen"},
    {"period", 2},
    {"block", 'p'},
    {"electronegativity", 3.98},
    {"atomic_radius", 135},
    {"ionization_energy", 17.423},
    {"electron_affinity", 3.339},
    {"melting_point", 53.53},
    {"boiling_point", 85.03},
    {"density", 0.001696},
    {"standard_state", "gas"},
}

local chlorine_properties = {
    {"name", "Chlorine"},
    {"symbol", "Cl"},
    {"number", 17},
    {"oxidation_states", OxidationStates.new{-1, 1, 5, 7}},
    {"mass", 35.453},
    {"group", 17},
    {"family", "halogen"},
    {"period", 3},
    {"block", 'p'},
    {"electronegativity", 3.16},
    {"atomic_radius", 175},
    {"ionization_energy", 12.968},
    {"electron_affinity", 3.617},
    {"melting_point", 171.65},
    {"boiling_point", 239.11},
    {"density", 0.003214},
    {"standard_state", "gas"},
}

local bromine_properties = {
    {"name", "Bromine"},
    {"symbol", "Br"},
    {"number", 35},
    {"oxidation_states", OxidationStates.new{-1, 1, 5}},
    {"mass", 79.904},
    {"group", 17},
    {"family", "halogen"},
    {"period", 4},
    {"block", 'p'},
    {"electronegativity", 2.96},
    {"atomic_radius", 183},
    {"ionization_energy", 11.814},
    {"electron_affinity", 3.365},
    {"melting_point", 265.95},
    {"boiling_point", 331.95},
    {"density", 3.11},
    {"standard_state", "liquid"},
}

local iodine_properties = {
    {"name", "Iodine"},
    {"symbol", "I"},
    {"number", 53},
    {"oxidation_states", OxidationStates.new{-1, 1, 5, 7}},
    {"mass", 126.9045},
    {"group", 17},
    {"family", "halogen"},
    {"period", 5},
    {"block", 'p'},
    {"electronegativity", 2.66},
    {"atomic_radius", 198},
    {"ionization_energy", 10.451},
    {"electron_affinity", 3.059},
    {"melting_point", 386.85},
    {"boiling_point", 457.55},
    {"density", 4.93},
    {"standard_state", "solid"},
}

local astatine_properties = {
    {"name", "Astatine"},
    {"symbol", "At"},
    {"number", 85},
    {"oxidation_states", OxidationStates.new{-1, 1, 3, 5, 7}},
    {"mass", 209.98715},
    {"group", 17},
    {"family", "halogen"},
    {"period", 6},
    {"block", 'p'},
    {"electronegativity", 2.2},
    {"atomic_radius", 202},
    {"ionization_energy", 9.5},
    {"electron_affinity", 2.8},
    {"melting_point", 575},
    {"boiling_point", nil},
    {"density", 7},
    {"standard_state", "solid"},
}

local tennessine_properties = {
    {"name", "Tennessine"},
    {"symbol", "Ts"},
    {"number", 117},
    {"oxidation_states", OxidationStates.new{-1, 1, 3, 5}},
    {"mass", 294.211},
    {"group", 17},
    {"family", "halogen"},
    {"period", 7},
    {"block", 'p'},
    {"electronegativity", nil},
    {"atomic_radius", nil},
    {"ionization_energy", nil},
    {"electron_affinity", nil},
    {"melting_point", nil},
    {"boiling_point", nil},
    {"density", nil},
    {"standard_state", "solid"},
}

describe("Halogen", function ()

    test('Halogen:name()returns "Halogen"', function ()
        assert.are.equal("Halogen", halogen_gas:name(), 'Halogen:name() did not return "Halogen"')
    end)

    test(string.format("%s:length() returns 6", halogen_gas:name()), function ()
        local noble_gas_length = halogen_gas:length()
        local fail_message = string.format("%s:length() did not return 6", halogen_gas:name())
        assert.are.equal(6, noble_gas_length, fail_message)
    end)

    test_elements(halogen_gas.fluorine, halogen_gas, fluorine_properties, describe, test, assert)
    test_elements(halogen_gas.chlorine, halogen_gas, chlorine_properties, describe, test, assert)
    test_elements(halogen_gas.bromine, halogen_gas, bromine_properties, describe, test, assert)
    test_elements(halogen_gas.iodine, halogen_gas, iodine_properties, describe, test, assert)
    test_elements(halogen_gas.astatine, halogen_gas, astatine_properties, describe, test, assert)
    test_elements(halogen_gas.tennessine, halogen_gas, tennessine_properties, describe, test, assert)
end)
