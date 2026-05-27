local alkaline_earth_metal = require("periodic-element.elements.alkaline_earth_metal")
local OxidationStates = require("periodic-element.element.oxidation_states")
local test_elements = require("test.periodic-element.elements.test_elements")

local beryllium_properties = {
    {"name", "Beryllium"},
    {"symbol", "Be"},
    {"number", 4},
    {"oxidation_states", OxidationStates.new{2}},
    {"mass", 9.012183},
    {"group", 2},
    {"family", "alkaline earth metal"},
    {"period", 2},
    {"block", 's'},
    {"electronegativity", 1.57},
    {"atomic_radius", 153},
    {"ionization_energy", 9.323},
    {"electron_affinity", nil},
    {"melting_point", 1560},
    {"boiling_point", 2744},
    {"density", 1.85},
    {"standard_state", "solid"},
}

local magnesium_properties = {
    {"name", "Magnesium"},
    {"symbol", "Mg"},
    {"number", 12},
    {"oxidation_states", OxidationStates.new{2}},
    {"mass", 24.305},
    {"group", 2},
    {"family", "alkaline earth metal"},
    {"period", 3},
    {"block", 's'},
    {"electronegativity", 1.31},
    {"atomic_radius", 173},
    {"ionization_energy", 7.646},
    {"electron_affinity", nil},
    {"melting_point", 923},
    {"boiling_point", 1363},
    {"density", 1.74},
    {"standard_state", "solid"},
}

local calcium_properties = {
    {"name", "Calcium"},
    {"symbol", "Ca"},
    {"number", 20},
    {"oxidation_states", OxidationStates.new{2}},
    {"mass", 40.078},
    {"group", 2},
    {"family", "alkaline earth metal"},
    {"period", 4},
    {"block", 's'},
    {"electronegativity", 1},
    {"atomic_radius", 231},
    {"ionization_energy", 6.113},
    {"electron_affinity", nil},
    {"melting_point", 1115},
    {"boiling_point", 1757},
    {"density", 1.54},
    {"standard_state", "solid"},
}

local strontium_properties = {
    {"name", "Strontium"},
    {"symbol", "Sr"},
    {"number", 38},
    {"oxidation_states", OxidationStates.new{2}},
    {"mass", 87.62},
    {"group", 2},
    {"family", "alkaline earth metal"},
    {"period", 5},
    {"block", 's'},
    {"electronegativity", 0.95},
    {"atomic_radius", 249},
    {"ionization_energy", 5.695},
    {"electron_affinity", nil},
    {"melting_point", 1050},
    {"boiling_point", 1655},
    {"density", 2.64},
    {"standard_state", "solid"},
}

local barium_properties = {
    {"name", "Barium"},
    {"symbol", "Ba"},
    {"number", 56},
    {"oxidation_states", OxidationStates.new{2}},
    {"mass", 137.328},
    {"group", 2},
    {"family", "alkaline earth metal"},
    {"period", 6},
    {"block", 's'},
    {"electronegativity", 0.89},
    {"atomic_radius", 268},
    {"ionization_energy", 5.212},
    {"electron_affinity", nil},
    {"melting_point", 1000},
    {"boiling_point", 2170},
    {"density", 3.62},
    {"standard_state", "solid"},
}

local radium_properties = {
    {"name", "Radium"},
    {"symbol", "Ra"},
    {"number", 88},
    {"oxidation_states", OxidationStates.new{2}},
    {"mass", 226.02541},
    {"group", 2},
    {"family", "alkaline earth metal"},
    {"period", 7},
    {"block", 's'},
    {"electronegativity", 0.9},
    {"atomic_radius", 283},
    {"ionization_energy", 5.279},
    {"electron_affinity", nil},
    {"melting_point", 973},
    {"boiling_point", 1413},
    {"density", 5},
    {"standard_state", "solid"},
}

describe("AlkalineEarthMetal", function ()

    test('AlkalineEarthMetal:name()returns "AlkalineEarthMetal"', function ()
        assert.are.equal("AlkalineEarthMetal", alkaline_earth_metal:name(), 'AlkalineEarthMetal:name() did not return "AlkalineEarthMetal"')
    end)

    test(string.format("%s:length() returns 6", alkaline_earth_metal:name()), function ()
        local alkali_metal_length = alkaline_earth_metal:length()
        local fail_message = string.format("%s:length() did not return 6", alkaline_earth_metal:name())
        assert.are.equal(6, alkali_metal_length, fail_message)
    end)

    test_elements(alkaline_earth_metal.beryllium, alkaline_earth_metal, beryllium_properties, describe, test, assert)
    test_elements(alkaline_earth_metal.magnesium, alkaline_earth_metal, magnesium_properties, describe, test, assert)
    test_elements(alkaline_earth_metal.calcium, alkaline_earth_metal, calcium_properties, describe, test, assert)
    test_elements(alkaline_earth_metal.strontium, alkaline_earth_metal, strontium_properties, describe, test, assert)
    test_elements(alkaline_earth_metal.barium, alkaline_earth_metal, barium_properties, describe, test, assert)
    test_elements(alkaline_earth_metal.radium, alkaline_earth_metal, radium_properties, describe, test, assert)
end)
