local noble_gas = require("chemical-element.elements.noble_gas")
local OxidationStates = require("chemical-element.element.oxidation_states")
local test_elements = require("test.chemical-element.elements.test_elements")

local helium_properties = {
    {"name", "Helium"},
    {"symbol", "He"},
    {"number", 2},
    {"oxidation_states", OxidationStates.new{0}},
    {"mass", 4.0026},
    {"group", 18},
    {"family", "noble gas"},
    {"period", 1},
    {"block", 's'},
    {"electronegativity", nil},
    {"atomic_radius", 140},
    {"ionization_energy", 24.587},
    {"electron_affinity", nil},
    {"melting_point", 0.95},
    {"boiling_point", 4.22},
    {"density", 0.0001785},
    {"standard_state", "gas"},
}

local neon_properties = {
    {"name", "Neon"},
    {"symbol", "Ne"},
    {"number", 10},
    {"oxidation_states", OxidationStates.new{0}},
    {"mass", 20.18},
    {"group", 18},
    {"family", "noble gas"},
    {"period", 2},
    {"block", 'p'},
    {"electronegativity", nil},
    {"atomic_radius", 154},
    {"ionization_energy", 21.565},
    {"electron_affinity", nil},
    {"melting_point", 24.56},
    {"boiling_point", 27.07},
    {"density", 0.0008999},
    {"standard_state", "gas"},
}

local argon_properties = {
    {"name", "Argon"},
    {"symbol", "Ar"},
    {"number", 18},
    {"oxidation_states", OxidationStates.new{0}},
    {"mass", 39.948},
    {"group", 18},
    {"family", "noble gas"},
    {"period", 3},
    {"block", 'p'},
    {"electronegativity", nil},
    {"atomic_radius", 188},
    {"ionization_energy", 15.76},
    {"electron_affinity", nil},
    {"melting_point", 83.8},
    {"boiling_point", 87.3},
    {"density", 0.0017837},
    {"standard_state", "gas"},
}

local krypton_properties = {
    {"name", "Krypton"},
    {"symbol", "Kr"},
    {"number", 36},
    {"oxidation_states", OxidationStates.new{0}},
    {"mass", 83.798},
    {"group", 18},
    {"family", "noble gas"},
    {"period", 4},
    {"block", 'p'},
    {"electronegativity", 3},
    {"atomic_radius", 202},
    {"ionization_energy", 14},
    {"electron_affinity", nil},
    {"melting_point", 115.79},
    {"boiling_point", 119.93},
    {"density", 0.003733},
    {"standard_state", "gas"},
}

local xenon_properties = {
    {"name", "Xenon"},
    {"symbol", "Xe"},
    {"number", 54},
    {"oxidation_states", OxidationStates.new{0}},
    {"mass", 131.293},
    {"group", 18},
    {"family", "noble gas"},
    {"period", 5},
    {"block", 'p'},
    {"electronegativity", 2.6},
    {"atomic_radius", 216},
    {"ionization_energy", 12.13},
    {"electron_affinity", nil},
    {"melting_point", 161.36},
    {"boiling_point", 165.03},
    {"density", 0.005887},
    {"standard_state", "gas"},
}

local radon_properties = {
    {"name", "Radon"},
    {"symbol", "Rn"},
    {"number", 86},
    {"oxidation_states", OxidationStates.new{0}},
    {"mass", 222.01758},
    {"group", 18},
    {"family", "noble gas"},
    {"period", 6},
    {"block", 'p'},
    {"electronegativity", nil},
    {"atomic_radius", 220},
    {"ionization_energy", 10.745},
    {"electron_affinity", nil},
    {"melting_point", 202},
    {"boiling_point", 211.45},
    {"density", 0.00973},
    {"standard_state", "gas"},
}

local oganesson_properties = {
    {"name", "Oganesson"},
    {"symbol", "Og"},
    {"number", 118},
    {"oxidation_states", OxidationStates.new{-1, 0, 1, 2, 4, 6}},
    {"mass", 295.216},
    {"group", 18},
    {"family", "noble gas"},
    {"period", 7},
    {"block", 'p'},
    {"electronegativity", nil},
    {"atomic_radius", nil},
    {"ionization_energy", nil},
    {"electron_affinity", nil},
    {"melting_point", nil},
    {"boiling_point", nil},
    {"density", nil},
    {"standard_state", "gas"},
}

describe("NobleGas", function ()

    test('NobleGas:name()returns "NobleGas"', function ()
        assert.are.equal("NobleGas", noble_gas:name(), 'NobleGas:name() did not return "NobleGas"')
    end)

    test(string.format("%s:length() returns 7", noble_gas:name()), function ()
        local noble_gas_length = noble_gas:length()
        local fail_message = string.format("%s:length() did not return 7", noble_gas:name())
        assert.are.equal(7, noble_gas_length, fail_message)
    end)

    test_elements(noble_gas.helium, noble_gas, helium_properties, describe, test, assert)
    test_elements(noble_gas.neon, noble_gas, neon_properties, describe, test, assert)
    test_elements(noble_gas.argon, noble_gas, argon_properties, describe, test, assert)
    test_elements(noble_gas.krypton, noble_gas, krypton_properties, describe, test, assert)
    test_elements(noble_gas.xenon, noble_gas, xenon_properties, describe, test, assert)
    test_elements(noble_gas.radon, noble_gas, radon_properties, describe, test, assert)
    test_elements(noble_gas.oganesson, noble_gas, oganesson_properties, describe, test, assert)
end)
