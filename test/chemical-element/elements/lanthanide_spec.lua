local lanthanide = require("chemical-element.elements.lanthanide")
local OxidationStates = require("chemical-element.element.oxidation_states")
local test_elements = require("test.chemical-element.elements.test_elements")

local lanthanum_properties = {
    {"name", "lanthanum"},
    {"symbol", "La"},
    {"number", 57},
    {"oxidation_states", OxidationStates.new{3}},
    {"mass", 138.9055},
    {"group", nil},
    {"family", "lanthanide"},
    {"period", 6},
    {"block", 'f'},
    {"electronegativity", 1.1},
    {"atomic_radius", 240},
    {"ionization_energy", 5.577},
    {"electron_affinity", 0.5},
    {"melting_point", 1191},
    {"boiling_point", 3737},
    {"density", 6.15},
    {"standard_state", "solid"},
}

local cerium_properties = {
    {"name", "cerium"},
    {"symbol", "Ce"},
    {"number", 58},
    {"oxidation_states", OxidationStates.new{3, 4}},
    {"mass", 140.116},
    {"group", nil},
    {"family", "lanthanide"},
    {"period", 6},
    {"block", 'f'},
    {"electronegativity", 1.12},
    {"atomic_radius", 235},
    {"ionization_energy", 5.539},
    {"electron_affinity", 0.5},
    {"melting_point", 1071},
    {"boiling_point", 3697},
    {"density", 6.77},
    {"standard_state", "solid"},
}

local praseodymium_properties = {
    {"name", "praseodymium"},
    {"symbol", "Pr"},
    {"number", 59},
    {"oxidation_states", OxidationStates.new{3}},
    {"mass", 140.90766},
    {"group", nil},
    {"family", "lanthanide"},
    {"period", 6},
    {"block", 'f'},
    {"electronegativity", 1.13},
    {"atomic_radius", 239},
    {"ionization_energy", 5.464},
    {"electron_affinity", nil},
    {"melting_point", 1204},
    {"boiling_point", 3793},
    {"density", 6.77},
    {"standard_state", "solid"},
}

local neodymium_properties = {
    {"name", "neodymium"},
    {"symbol", "Nd"},
    {"number", 60},
    {"oxidation_states", OxidationStates.new{3}},
    {"mass", 144.243},
    {"group", nil},
    {"family", "lanthanide"},
    {"period", 6},
    {"block", 'f'},
    {"electronegativity", 1.14},
    {"atomic_radius", 229},
    {"ionization_energy", 5.525},
    {"electron_affinity", nil},
    {"melting_point", 1294},
    {"boiling_point", 3347},
    {"density", 7.01},
    {"standard_state", "solid"},
}

local promethium_properties = {
    {"name", "promethium"},
    {"symbol", "Pm"},
    {"number", 61},
    {"oxidation_states", OxidationStates.new{3}},
    {"mass", 144.91276},
    {"group", nil},
    {"family", "lanthanide"},
    {"period", 6},
    {"block", 'f'},
    {"electronegativity", nil},
    {"atomic_radius", 236},
    {"ionization_energy", 5.55},
    {"electron_affinity", nil},
    {"melting_point", 1315},
    {"boiling_point", 3273},
    {"density", 7.26},
    {"standard_state", "solid"},
}

local samarium_properties = {
    {"name", "samarium"},
    {"symbol", "Sm"},
    {"number", 62},
    {"oxidation_states", OxidationStates.new{2, 3}},
    {"mass", 150.36},
    {"group", nil},
    {"family", "lanthanide"},
    {"period", 6},
    {"block", 'f'},
    {"electronegativity", 1.17},
    {"atomic_radius", 229},
    {"ionization_energy", 5.644},
    {"electron_affinity", nil},
    {"melting_point", 1347},
    {"boiling_point", 2067},
    {"density", 7.52},
    {"standard_state", "solid"},
}

local europium_properties = {
    {"name", "europium"},
    {"symbol", "Eu"},
    {"number", 63},
    {"oxidation_states", OxidationStates.new{2, 3}},
    {"mass", 151.964},
    {"group", nil},
    {"family", "lanthanide"},
    {"period", 6},
    {"block", 'f'},
    {"electronegativity", nil},
    {"atomic_radius", 233},
    {"ionization_energy", 5.67},
    {"electron_affinity", nil},
    {"melting_point", 1095},
    {"boiling_point", 1802},
    {"density", 5.24},
    {"standard_state", "solid"},
}

local gadolinium_properties = {
    {"name", "gadolinium"},
    {"symbol", "Gd"},
    {"number", 64},
    {"oxidation_states", OxidationStates.new{3}},
    {"mass", 157.25},
    {"group", nil},
    {"family", "lanthanide"},
    {"period", 6},
    {"block", 'f'},
    {"electronegativity", 1.2},
    {"atomic_radius", 237},
    {"ionization_energy", 6.15},
    {"electron_affinity", nil},
    {"melting_point", 1586},
    {"boiling_point", 3546},
    {"density", 7.9},
    {"standard_state", "solid"},
}

local terbium_properties = {
    {"name", "terbium"},
    {"symbol", "Tb"},
    {"number", 65},
    {"oxidation_states", OxidationStates.new{3}},
    {"mass", 158.92535},
    {"group", nil},
    {"family", "lanthanide"},
    {"period", 6},
    {"block", 'f'},
    {"electronegativity", nil},
    {"atomic_radius", 221},
    {"ionization_energy", 5.864},
    {"electron_affinity", nil},
    {"melting_point", 1629},
    {"boiling_point", 3503},
    {"density", 8.23},
    {"standard_state", "solid"},
}

local dysprosium_properties = {
    {"name", "dysprosium"},
    {"symbol", "Dy"},
    {"number", 66},
    {"oxidation_states", OxidationStates.new{3}},
    {"mass", 162.5},
    {"group", nil},
    {"family", "lanthanide"},
    {"period", 6},
    {"block", 'f'},
    {"electronegativity", 1.22},
    {"atomic_radius", 229},
    {"ionization_energy", 5.939},
    {"electron_affinity", nil},
    {"melting_point", 1685},
    {"boiling_point", 2840},
    {"density", 8.55},
    {"standard_state", "solid"},
}

local holmium_properties = {
    {"name", "holmium"},
    {"symbol", "Ho"},
    {"number", 67},
    {"oxidation_states", OxidationStates.new{3}},
    {"mass", 164.93033},
    {"group", nil},
    {"family", "lanthanide"},
    {"period", 6},
    {"block", 'f'},
    {"electronegativity", 1.23},
    {"atomic_radius", 216},
    {"ionization_energy", 6.022},
    {"electron_affinity", nil},
    {"melting_point", 1747},
    {"boiling_point", 2973},
    {"density", 8.8},
    {"standard_state", "solid"},
}

local erbium_properties = {
    {"name", "erbium"},
    {"symbol", "Er"},
    {"number", 68},
    {"oxidation_states", OxidationStates.new{3}},
    {"mass", 167.259},
    {"group", nil},
    {"family", "lanthanide"},
    {"period", 6},
    {"block", 'f'},
    {"electronegativity", 1.24},
    {"atomic_radius", 235},
    {"ionization_energy", 6.108},
    {"electron_affinity", nil},
    {"melting_point", 1802},
    {"boiling_point", 3141},
    {"density", 9.07},
    {"standard_state", "solid"},
}

local thulium_properties = {
    {"name", "thulium"},
    {"symbol", "Tm"},
    {"number", 69},
    {"oxidation_states", OxidationStates.new{3}},
    {"mass", 168.93422},
    {"group", nil},
    {"family", "lanthanide"},
    {"period", 6},
    {"block", 'f'},
    {"electronegativity", 1.25},
    {"atomic_radius", 227},
    {"ionization_energy", 6.184},
    {"electron_affinity", nil},
    {"melting_point", 1818},
    {"boiling_point", 2223},
    {"density", 9.32},
    {"standard_state", "solid"},
}

local ytterbium_properties = {
    {"name", "ytterbium"},
    {"symbol", "Yb"},
    {"number", 70},
    {"oxidation_states", OxidationStates.new{2, 3}},
    {"mass", 173.055},
    {"group", nil},
    {"family", "lanthanide"},
    {"period", 6},
    {"block", 'f'},
    {"electronegativity", nil},
    {"atomic_radius", 242},
    {"ionization_energy", 6.254},
    {"electron_affinity", nil},
    {"melting_point", 1092},
    {"boiling_point", 1469},
    {"density", 6.9},
    {"standard_state", "solid"},
}

describe("Lanthanide", function ()

    test('Lanthanide:name()returns "Lanthanide"', function ()
        assert.are.equal("Lanthanide", lanthanide:name(), 'Lanthanide:name() did not return "Lanthanide"')
    end)

    test(string.format("%s:length() returns 14", lanthanide:name()), function ()
        local alkali_metal_length = lanthanide:length()
        local message = string.format("%s:length() did not return 14", lanthanide:name())
        assert.are.equal(14, alkali_metal_length, message)
    end)

    test_elements(lanthanide.lanthanum, lanthanide, lanthanum_properties, describe, test, assert)
    test_elements(lanthanide.cerium, lanthanide, cerium_properties, describe, test, assert)
    test_elements(lanthanide.praseodymium, lanthanide, praseodymium_properties, describe, test, assert)
    test_elements(lanthanide.neodymium, lanthanide, neodymium_properties, describe, test, assert)
    test_elements(lanthanide.promethium, lanthanide, promethium_properties, describe, test, assert)
    test_elements(lanthanide.samarium, lanthanide, samarium_properties, describe, test, assert)
    test_elements(lanthanide.europium, lanthanide, europium_properties, describe, test, assert)
    test_elements(lanthanide.gadolinium, lanthanide, gadolinium_properties, describe, test, assert)
    test_elements(lanthanide.terbium, lanthanide, terbium_properties, describe, test, assert)
    test_elements(lanthanide.dysprosium, lanthanide, dysprosium_properties, describe, test, assert)
    test_elements(lanthanide.holmium, lanthanide, holmium_properties, describe, test, assert)
    test_elements(lanthanide.erbium, lanthanide, erbium_properties, describe, test, assert)
    test_elements(lanthanide.thulium, lanthanide, thulium_properties, describe, test, assert)
    test_elements(lanthanide.ytterbium, lanthanide, ytterbium_properties, describe, test, assert)
end)
