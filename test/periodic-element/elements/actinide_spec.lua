local actinide = require("periodic-element.elements.actinide")
local OxidationStates = require("periodic-element.element.oxidation_states")
local test_elements = require("test.periodic-element.elements.test_elements")

local actinium_properties = {
    {"name", "Actinium"},
    {"symbol", "Ac"},
    {"number", 89},
    {"oxidation_states", OxidationStates.new{3}},
    {"mass", 227.02775},
    {"group", nil},
    {"family", "Actinide"},
    {"period", 7},
    {"block", 'f'},
    {"electronegativity", 1.1},
    {"atomic_radius", 260},
    {"ionization_energy", 5.17},
    {"electron_affinity", nil},
    {"melting_point", 1324},
    {"boiling_point", 3471},
    {"density", 10.07},
    {"standard_state", "solid"},
}

local thorium_properties = {
    {"name", "Thorium"},
    {"symbol", "Th"},
    {"number", 90},
    {"oxidation_states", OxidationStates.new{4}},
    {"mass", 232.038},
    {"group", nil},
    {"family", "Actinide"},
    {"period", 7},
    {"block", 'f'},
    {"electronegativity", 1.3},
    {"atomic_radius", 237},
    {"ionization_energy", 6.08},
    {"electron_affinity", nil},
    {"melting_point", 2023},
    {"boiling_point", 5061},
    {"density", 11.72},
    {"standard_state", "solid"},
}

local protactinium_properties = {
    {"name", "Protactinium"},
    {"symbol", "Pa"},
    {"number", 91},
    {"oxidation_states", OxidationStates.new{4, 5}},
    {"mass", 231.03588},
    {"group", nil},
    {"family", "Actinide"},
    {"period", 7},
    {"block", 'f'},
    {"electronegativity", 1.5},
    {"atomic_radius", 243},
    {"ionization_energy", 5.89},
    {"electron_affinity", nil},
    {"melting_point", 1845},
    {"boiling_point", nil},
    {"density", 15.37},
    {"standard_state", "solid"},
}

local uranium_properties = {
    {"name", "Uranium"},
    {"symbol", "U"},
    {"number", 92},
    {"oxidation_states", OxidationStates.new{3, 4, 5, 6}},
    {"mass", 238.0289},
    {"group", nil},
    {"family", "Actinide"},
    {"period", 7},
    {"block", 'f'},
    {"electronegativity", 1.38},
    {"atomic_radius", 240},
    {"ionization_energy", 6.194},
    {"electron_affinity", nil},
    {"melting_point", 1408},
    {"boiling_point", 4404},
    {"density", 18.95},
    {"standard_state", "solid"},
}

local neptunium_properties = {
    {"name", "Neptunium"},
    {"symbol", "Np"},
    {"number", 93},
    {"oxidation_states", OxidationStates.new{3, 4, 5, 6}},
    {"mass", 237.048172},
    {"group", nil},
    {"family", "Actinide"},
    {"period", 7},
    {"block", 'f'},
    {"electronegativity", 1.36},
    {"atomic_radius", 221},
    {"ionization_energy", 6.266},
    {"electron_affinity", nil},
    {"melting_point", 917},
    {"boiling_point", 4175},
    {"density", 20.25},
    {"standard_state", "solid"},
}

local plutonium_properties = {
    {"name", "Plutonium"},
    {"symbol", "Pu"},
    {"number", 94},
    {"oxidation_states", OxidationStates.new{3, 4, 5, 6}},
    {"mass", 244.0642},
    {"group", nil},
    {"family", "Actinide"},
    {"period", 7},
    {"block", 'f'},
    {"electronegativity", 1.28},
    {"atomic_radius", 243},
    {"ionization_energy", 6.06},
    {"electron_affinity", nil},
    {"melting_point", 913},
    {"boiling_point", 3501},
    {"density", 19.84},
    {"standard_state", "solid"},
}

local americium_properties = {
    {"name", "Americium"},
    {"symbol", "Am"},
    {"number", 95},
    {"oxidation_states", OxidationStates.new{3, 4, 5, 6}},
    {"mass", 243.06138},
    {"group", nil},
    {"family", "Actinide"},
    {"period", 7},
    {"block", 'f'},
    {"electronegativity", 1.3},
    {"atomic_radius", 244},
    {"ionization_energy", 5.993},
    {"electron_affinity", nil},
    {"melting_point", 1449},
    {"boiling_point", 2284},
    {"density", 13.69},
    {"standard_state", "solid"},
}

local curium_properties = {
    {"name", "Curium"},
    {"symbol", "Cm"},
    {"number", 96},
    {"oxidation_states", OxidationStates.new{3}},
    {"mass", 247.07035},
    {"group", nil},
    {"family", "Actinide"},
    {"period", 7},
    {"block", 'f'},
    {"electronegativity", 1.3},
    {"atomic_radius", 245},
    {"ionization_energy", 6.02},
    {"electron_affinity", nil},
    {"melting_point", 1618},
    {"boiling_point", 3400},
    {"density", 13.51},
    {"standard_state", "solid"},
}

local berkelium_properties = {
    {"name", "Berkelium"},
    {"symbol", "Bk"},
    {"number", 97},
    {"oxidation_states", OxidationStates.new{3, 4}},
    {"mass", 247.07031},
    {"group", nil},
    {"family", "Actinide"},
    {"period", 7},
    {"block", 'f'},
    {"electronegativity", 1.3},
    {"atomic_radius", 244},
    {"ionization_energy", 6.23},
    {"electron_affinity", nil},
    {"melting_point", 1323},
    {"boiling_point", nil},
    {"density", 14},
    {"standard_state", "solid"},
}

local californium_properties = {
    {"name", "Californium"},
    {"symbol", "Cf"},
    {"number", 98},
    {"oxidation_states", OxidationStates.new{3}},
    {"mass", 251.07959},
    {"group", nil},
    {"family", "Actinide"},
    {"period", 7},
    {"block", 'f'},
    {"electronegativity", 1.3},
    {"atomic_radius", 245},
    {"ionization_energy", 6.3},
    {"electron_affinity", nil},
    {"melting_point", 1173},
    {"boiling_point", nil},
    {"density", nil},
    {"standard_state", "solid"},
}

local einsteinium_properties = {
    {"name", "Einsteinium"},
    {"symbol", "Es"},
    {"number", 99},
    {"oxidation_states", OxidationStates.new{3}},
    {"mass", 252.083},
    {"group", nil},
    {"family", "Actinide"},
    {"period", 7},
    {"block", 'f'},
    {"electronegativity", 1.3},
    {"atomic_radius", 245},
    {"ionization_energy", 6.42},
    {"electron_affinity", nil},
    {"melting_point", 1133},
    {"boiling_point", nil},
    {"density", nil},
    {"standard_state", "solid"},
}

local fermium_properties = {
    {"name", "Fermium"},
    {"symbol", "Fm"},
    {"number", 100},
    {"oxidation_states", OxidationStates.new{3}},
    {"mass", 257.09511},
    {"group", nil},
    {"family", "Actinide"},
    {"period", 7},
    {"block", 'f'},
    {"electronegativity", 1.3},
    {"atomic_radius", nil},
    {"ionization_energy", 6.5},
    {"electron_affinity", nil},
    {"melting_point", 1800},
    {"boiling_point", nil},
    {"density", nil},
    {"standard_state", "solid"},
}

local mendelevium_properties = {
    {"name", "Mendelevium"},
    {"symbol", "Md"},
    {"number", 101},
    {"oxidation_states", OxidationStates.new{2, 3}},
    {"mass", 258.09843},
    {"group", nil},
    {"family", "Actinide"},
    {"period", 7},
    {"block", 'f'},
    {"electronegativity", 1.3},
    {"atomic_radius", nil},
    {"ionization_energy", 6.58},
    {"electron_affinity", nil},
    {"melting_point", 1100},
    {"boiling_point", nil},
    {"density", nil},
    {"standard_state", "solid"},
}

local nobelium_properties = {
    {"name", "Nobelium"},
    {"symbol", "No"},
    {"number", 102},
    {"oxidation_states", OxidationStates.new{2, 3}},
    {"mass", 259.101},
    {"group", nil},
    {"family", "Actinide"},
    {"period", 7},
    {"block", 'f'},
    {"electronegativity", 1.3},
    {"atomic_radius", nil},
    {"ionization_energy", 6.65},
    {"electron_affinity", nil},
    {"melting_point", 1100},
    {"boiling_point", nil},
    {"density", nil},
    {"standard_state", "solid"},
}

describe("Actinide", function ()

    test('Actinide:name()returns "Actinide"', function ()
        assert.are.equal("Actinide", actinide:name(), 'Actinide:name() did not return "Actinide"')
    end)

    test(string.format("%s:length() returns 14", actinide:name()), function ()
        local alkali_metal_length = actinide:length()
        local message = string.format("%s:length() did not return 14", actinide:name())
        assert.are.equal(14, alkali_metal_length, message)
    end)

    test_elements(actinide.actinium, actinide, actinium_properties, describe, test, assert)
    test_elements(actinide.thorium, actinide, thorium_properties, describe, test, assert)
    test_elements(actinide.protactinium, actinide, protactinium_properties, describe, test, assert)
    test_elements(actinide.uranium, actinide, uranium_properties, describe, test, assert)
    test_elements(actinide.neptunium, actinide, neptunium_properties, describe, test, assert)
    test_elements(actinide.plutonium, actinide, plutonium_properties, describe, test, assert)
    test_elements(actinide.americium, actinide, americium_properties, describe, test, assert)
    test_elements(actinide.curium, actinide, curium_properties, describe, test, assert)
    test_elements(actinide.berkelium, actinide, berkelium_properties, describe, test, assert)
    test_elements(actinide.californium, actinide, californium_properties, describe, test, assert)
    test_elements(actinide.einsteinium, actinide, einsteinium_properties, describe, test, assert)
    test_elements(actinide.fermium, actinide, fermium_properties, describe, test, assert)
    test_elements(actinide.mendelevium, actinide, mendelevium_properties, describe, test, assert)
    test_elements(actinide.nobelium, actinide, nobelium_properties, describe, test, assert)
end)
