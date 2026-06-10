local Actinide = require("chemical-element.elements.actinide")
local AlkaliMetal = require("chemical-element.elements.alkali_metal")
local AlkalineEarth = require("chemical-element.elements.alkaline_earth_metal")
local Halogen = require("chemical-element.elements.halogen")
local Lanthanide = require("chemical-element.elements.lanthanide")
local Metalloid = require("chemical-element.elements.metalloid")
local NobleGas = require("chemical-element.elements.noble_gas")
local Nonmetal = require("chemical-element.elements.nonmetal")
local PostTransitionMetal = require("chemical-element.elements.post_transition_metal")
local TransitionMetal = require("chemical-element.elements.transition_metal")
local ElementSet = require("chemical-element.elements.element_set")

local elements_accumulator = {}

local element_sets = {
    Actinide, AlkaliMetal, AlkalineEarth, Halogen, Lanthanide, Metalloid, NobleGas,
    Nonmetal, PostTransitionMetal, TransitionMetal
}

for element_set_index = 1, #element_sets do
    local element_set = element_sets[element_set_index]
    for _, value in element_set:pairs() do
        elements_accumulator[#elements_accumulator + 1] = value
    end
end

local elements_set = ElementSet.new(elements_accumulator)

return elements_set
