local post_transition_metal = require("chemical-element.elements.post_transition_metal")
local OxidationStates = require("chemical-element.element.oxidation_states")
local test_elements = require("test.chemical-element.elements.test_elements")

local aluminum_properties = {
    {"name", "Aluminum"},
    {"symbol", "Al"},
    {"number", 13},
    {"oxidation_states", OxidationStates.new{3}},
    {"mass", 26.981538},
    {"group", 13},
    {"family", "post-transition metal"},
    {"period", 3},
    {"block", 'p'},
    {"electronegativity", 1.61},
    {"atomic_radius", 184},
    {"ionization_energy", 5.986},
    {"electron_affinity", 0.441},
    {"melting_point", 933.437},
    {"boiling_point", 2792},
    {"density", 2.7},
    {"standard_state", "solid"},
}

local zinc_properties = {
    {"name", "Zinc"},
    {"symbol", "Zn"},
    {"number", 30},
    {"oxidation_states", OxidationStates.new{2}},
    {"mass", 65.38},
    {"group", 12},
    {"family", "post-transition metal"},
    {"period", 4},
    {"block", 'd'},
    {"electronegativity", 1.65},
    {"atomic_radius", 139},
    {"ionization_energy", 9.394},
    {"electron_affinity", nil},
    {"melting_point", 692.68},
    {"boiling_point", 1180},
    {"density", 7.134},
    {"standard_state", "solid"},
}

local gallium_properties = {
    {"name", "Gallium"},
    {"symbol", "Ga"},
    {"number", 31},
    {"oxidation_states", OxidationStates.new{3}},
    {"mass", 69.723},
    {"group", 13},
    {"family", "post-transition metal"},
    {"period", 4},
    {"block", 'p'},
    {"electronegativity", 1.81},
    {"atomic_radius", 187},
    {"ionization_energy", 5.999},
    {"electron_affinity", 0.3},
    {"melting_point", 302.91},
    {"boiling_point", 2477},
    {"density", 5.91},
    {"standard_state", "solid"},
}

local cadmium_properties = {
    {"name", "Cadmium"},
    {"symbol", "Cd"},
    {"number", 48},
    {"oxidation_states", OxidationStates.new{2}},
    {"mass", 112.414},
    {"group", 12},
    {"family", "post-transition metal"},
    {"period", 5},
    {"block", 'd'},
    {"electronegativity", 1.69},
    {"atomic_radius", 158},
    {"ionization_energy", 8.994},
    {"electron_affinity", nil},
    {"melting_point", 594.22},
    {"boiling_point", 1040},
    {"density", 8.69},
    {"standard_state", "solid"},
}

local indium_properties = {
    {"name", "Indium"},
    {"symbol", "In"},
    {"number", 49},
    {"oxidation_states", OxidationStates.new{3}},
    {"mass", 114.818},
    {"group", 13},
    {"family", "post-transition metal"},
    {"period", 5},
    {"block", 'p'},
    {"electronegativity", 1.78},
    {"atomic_radius", 193},
    {"ionization_energy", 5.786},
    {"electron_affinity", 0.3},
    {"melting_point", 429.75},
    {"boiling_point", 2345},
    {"density", 7.31},
    {"standard_state", "solid"},
}

local tin_properties = {
    {"name", "Tin"},
    {"symbol", "Sn"},
    {"number", 50},
    {"oxidation_states", OxidationStates.new{2, 4}},
    {"mass", 118.711},
    {"group", 14},
    {"family", "post-transition metal"},
    {"period", 5},
    {"block", 'p'},
    {"electronegativity", 1.96},
    {"atomic_radius", 217},
    {"ionization_energy", 7.344},
    {"electron_affinity", 1.2},
    {"melting_point", 505.08},
    {"boiling_point", 2875},
    {"density", 7.287},
    {"standard_state", "solid"},
}

local mercury_properties = {
    {"name", "Mercury"},
    {"symbol", "Hg"},
    {"number", 80},
    {"oxidation_states", OxidationStates.new{1, 2}},
    {"mass", 200.592},
    {"group", 12},
    {"family", "post-transition metal"},
    {"period", 6},
    {"block", 'd'},
    {"electronegativity", 2},
    {"atomic_radius", 209},
    {"ionization_energy", 10.438},
    {"electron_affinity", nil},
    {"melting_point", 234.32},
    {"boiling_point", 629.88},
    {"density", 13.5336},
    {"standard_state", "liquid"},
}

local thallium_properties = {
    {"name", "Thallium"},
    {"symbol", "Tl"},
    {"number", 81},
    {"oxidation_states", OxidationStates.new{1, 3}},
    {"mass", 204.383},
    {"group", 13},
    {"family", "post-transition metal"},
    {"period", 6},
    {"block", 'p'},
    {"electronegativity", 1.62},
    {"atomic_radius", 196},
    {"ionization_energy", 6.108},
    {"electron_affinity", 0.2},
    {"melting_point", 577},
    {"boiling_point", 1746},
    {"density", 11.8},
    {"standard_state", "solid"},
}

local lead_properties = {
    {"name", "Lead"},
    {"symbol", "Pb"},
    {"number", 82},
    {"oxidation_states", OxidationStates.new{2, 4}},
    {"mass", 207.2},
    {"group", 14},
    {"family", "post-transition metal"},
    {"period", 6},
    {"block", 'p'},
    {"electronegativity", 2.33},
    {"atomic_radius", 202},
    {"ionization_energy", 7.417},
    {"electron_affinity", 0.36},
    {"melting_point", 600.61},
    {"boiling_point", 2022},
    {"density", 11.342},
    {"standard_state", "solid"},
}

local bismuth_properties = {
    {"name", "Bismuth"},
    {"symbol", "Bi"},
    {"number", 83},
    {"oxidation_states", OxidationStates.new{3, 5}},
    {"mass", 208.9804},
    {"group", 15},
    {"family", "post-transition metal"},
    {"period", 6},
    {"block", 'p'},
    {"electronegativity", 2.02},
    {"atomic_radius", 207},
    {"ionization_energy", 7.289},
    {"electron_affinity", 0.946},
    {"melting_point", 544.55},
    {"boiling_point", 1837},
    {"density", 9.807},
    {"standard_state", "solid"},
}

local polonium_properties = {
    {"name", "Polonium"},
    {"symbol", "Po"},
    {"number", 84},
    {"oxidation_states", OxidationStates.new{2, 4}},
    {"mass", 208.98243},
    {"group", 16},
    {"family", "post-transition metal"},
    {"period", 6},
    {"block", 'p'},
    {"electronegativity", 2},
    {"atomic_radius", 197},
    {"ionization_energy", 8.417},
    {"electron_affinity", 1.9},
    {"melting_point", 527},
    {"boiling_point", 1235},
    {"density", 9.32},
    {"standard_state", "solid"},
}

local copernicium_properties = {
    {"name", "Copernicium"},
    {"symbol", "Cn"},
    {"number", 112},
    {"oxidation_states", OxidationStates.new{0, 1, 2}},
    {"mass", 286.179},
    {"group", 12},
    {"family", "post-transition metal"},
    {"period", 7},
    {"block", 'd'},
    {"electronegativity", nil},
    {"atomic_radius", nil},
    {"ionization_energy", nil},
    {"electron_affinity", nil},
    {"melting_point", nil},
    {"boiling_point", nil},
    {"density", nil},
    {"standard_state", "solid"},
}

local nihonium_properties = {
    {"name", "Nihonium"},
    {"symbol", "Nh"},
    {"number", 113},
    {"oxidation_states", nil},
    {"mass", 286.182},
    {"group", 13},
    {"family", "post-transition metal"},
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

local flerovium_properties = {
    {"name", "Flerovium"},
    {"symbol", "Fl"},
    {"number", 114},
    {"oxidation_states", OxidationStates.new{0, 1, 2, 4, 6}},
    {"mass", 290.192},
    {"group", 14},
    {"family", "post-transition metal"},
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

local moscovium_properties = {
    {"name", "Moscovium"},
    {"symbol", "Mc"},
    {"number", 115},
    {"oxidation_states", OxidationStates.new{1, 3}},
    {"mass", 290.196},
    {"group", 15},
    {"family", "post-transition metal"},
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

local livermorium_properties = {
    {"name", "Livermorium"},
    {"symbol", "Lv"},
    {"number", 116},
    {"oxidation_states", OxidationStates.new{-2, 2, 4}},
    {"mass", 293.205},
    {"group", 16},
    {"family", "post-transition metal"},
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

describe("PostTransitionMetal", function ()

    test('PostTransitionMetal:name()returns "PostTransitionMetal"', function ()
        assert.are.equal("PostTransitionMetal", post_transition_metal:name(), 'PostTransitionMetal:name() did not return "PostTransitionMetal"')
    end)

    test(string.format("%s:length() returns 16", post_transition_metal:name()), function ()
        local alkali_metal_length = post_transition_metal:length()
        local fail_message = string.format("%s:length() did not return 16", post_transition_metal:name())
        assert.are.equal(16, alkali_metal_length, fail_message)
    end)

    test_elements(post_transition_metal.aluminum, post_transition_metal, aluminum_properties, describe, test, assert)
    test_elements(post_transition_metal.zinc, post_transition_metal, zinc_properties, describe, test, assert)
    test_elements(post_transition_metal.gallium, post_transition_metal, gallium_properties, describe, test, assert)
    test_elements(post_transition_metal.cadmium, post_transition_metal, cadmium_properties, describe, test, assert)
    test_elements(post_transition_metal.indium, post_transition_metal, indium_properties, describe, test, assert)
    test_elements(post_transition_metal.tin, post_transition_metal, tin_properties, describe, test, assert)
    test_elements(post_transition_metal.mercury, post_transition_metal, mercury_properties, describe, test, assert)
    test_elements(post_transition_metal.thallium, post_transition_metal, thallium_properties, describe, test, assert)
    test_elements(post_transition_metal.lead, post_transition_metal, lead_properties, describe, test, assert)
    test_elements(post_transition_metal.bismuth, post_transition_metal, bismuth_properties, describe, test, assert)
    test_elements(post_transition_metal.polonium, post_transition_metal, polonium_properties, describe, test, assert)
    test_elements(post_transition_metal.copernicium, post_transition_metal, copernicium_properties, describe, test, assert)
    test_elements(post_transition_metal.nihonium, post_transition_metal, nihonium_properties, describe, test, assert)
    test_elements(post_transition_metal.flerovium, post_transition_metal, flerovium_properties, describe, test, assert)
    test_elements(post_transition_metal.moscovium, post_transition_metal, moscovium_properties, describe, test, assert)
    test_elements(post_transition_metal.livermorium, post_transition_metal, livermorium_properties, describe, test, assert)
end)
