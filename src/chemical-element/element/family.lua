local familyName = {
    alkali_metal = "alkali metal",
    alkaline_earth_metal = "alkaline earth metal",
    transition_metal = "transition metal",
    post_transition_metal = "post-transition metal",
    metalloid = "metalloid",
    nonmetal = "nonmetal",
    halogen = "halogen",
    noble_gas = "noble gas",
    lanthanide = "lanthanide",
    actinide = "actinide"
}

local family = {
    [3]=familyName.alkali_metal,
    [11]=familyName.alkali_metal,
    [19]=familyName.alkali_metal,
    [37]=familyName.alkali_metal,
    [55]=familyName.alkali_metal,
    [87]=familyName.alkali_metal,

    [4]=familyName.alkaline_earth_metal,
    [12]=familyName.alkaline_earth_metal,
    [20]=familyName.alkaline_earth_metal,
    [38]=familyName.alkaline_earth_metal,
    [56]=familyName.alkaline_earth_metal,
    [88]=familyName.alkaline_earth_metal,

    [13]=familyName.post_transition_metal,
    [30]=familyName.post_transition_metal,
    [31]=familyName.post_transition_metal,
    [48]=familyName.post_transition_metal,
    [49]=familyName.post_transition_metal,
    [50]=familyName.post_transition_metal,
    [80]=familyName.post_transition_metal,
    [81]=familyName.post_transition_metal,
    [82]=familyName.post_transition_metal,
    [83]=familyName.post_transition_metal,
    [84]=familyName.post_transition_metal,
    [112]=familyName.post_transition_metal,
    [113]=familyName.post_transition_metal,
    [114]=familyName.post_transition_metal,
    [115]=familyName.post_transition_metal,
    [116]=familyName.post_transition_metal,

    [5]=familyName.metalloid,
    [14]=familyName.metalloid,
    [32]=familyName.metalloid,
    [33]=familyName.metalloid,
    [51]=familyName.metalloid,
    [52]=familyName.metalloid,

    [9]=familyName.halogen,
    [17]=familyName.halogen,
    [35]=familyName.halogen,
    [53]=familyName.halogen,
    [85]=familyName.halogen,
    [117]=familyName.halogen,

    [2]=familyName.noble_gas,
    [10]=familyName.noble_gas,
    [18]=familyName.noble_gas,
    [36]=familyName.noble_gas,
    [54]=familyName.noble_gas,
    [86]=familyName.noble_gas,
    [118]=familyName.noble_gas,

    [1]=familyName.nonmetal,
    [6]=familyName.nonmetal,
    [7]=familyName.nonmetal,
    [8]=familyName.nonmetal,
    [15]=familyName.nonmetal,
    [16]=familyName.nonmetal,
    [34]=familyName.nonmetal
}

--- Returns the family an atomic number resides in or ``nil`` if it can't be
--- determined.
---@param atomic_number integer -- 1..118
---@return string|nil
local function family_of_atomic_number(atomic_number)
    assert(
        type(atomic_number) == "number" and atomic_number == math.floor(atomic_number) and atomic_number >= 1 and atomic_number <= 118,
        string.format("'atomic_number' positive integer in [1, 118] required but got: %s", tostring(atomic_number))
    )

    if atomic_number >= 57 and atomic_number <= 70 then
        return familyName.lanthanide
    end

    if atomic_number >= 89 and atomic_number <= 102 then
        return familyName.actinide
    end

    if atomic_number >= 21 and atomic_number <= 29
        or atomic_number >= 39 and atomic_number <= 47
        or atomic_number >= 71 and atomic_number <= 79
        or atomic_number >= 103 and atomic_number <= 111 then
        return familyName.transition_metal
    end

    return family[atomic_number]
end

return family_of_atomic_number
