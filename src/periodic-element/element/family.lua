local family = {
    [3]="Alkali Metal",
    [11]="Alkali Metal",
    [19]="Alkali Metal",
    [37]="Alkali Metal",
    [55]="Alkali Metal",
    [87]="Alkali Metal",

    [4]="Alkaline Earth Metal",
    [12]="Alkaline Earth Metal",
    [20]="Alkaline Earth Metal",
    [38]="Alkaline Earth Metal",
    [56]="Alkaline Earth Metal",
    [88]="Alkaline Earth Metal",

    [13]="Post-transition Metal",
    [30]="Post-transition Metal",
    [31]="Post-transition Metal",
    [48]="Post-transition Metal",
    [49]="Post-transition Metal",
    [50]="Post-transition Metal",
    [80]="Post-transition Metal",
    [81]="Post-transition Metal",
    [82]="Post-transition Metal",
    [83]="Post-transition Metal",
    [84]="Post-transition Metal",
    [112]="Post-transition Metal",
    [113]="Post-transition Metal",
    [114]="Post-transition Metal",
    [115]="Post-transition Metal",
    [116]="Post-transition Metal",

    [5]="Metalloid",
    [14]="Metalloid",
    [32]="Metalloid",
    [33]="Metalloid",
    [51]="Metalloid",
    [52]="Metalloid",

    [9]="Halogen",
    [17]="Halogen",
    [35]="Halogen",
    [53]="Halogen",
    [85]="Halogen",
    [117]="Halogen",

    [2]="Noble Gas",
    [10]="Noble Gas",
    [18]="Noble Gas",
    [36]="Noble Gas",
    [54]="Noble Gas",
    [86]="Noble Gas",
    [118]="Noble Gas",

    [1]="Nonmetal",
    [6]="Nonmetal",
    [7]="Nonmetal",
    [8]="Nonmetal",
    [15]="Nonmetal",
    [16]="Nonmetal",
    [34]="Nonmetal"
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
        return "Lanthanide"
    end

    if atomic_number >= 89 and atomic_number <= 102 then
        return "Actinide"
    end

    if atomic_number >= 21 and atomic_number <= 29
        or atomic_number >= 39 and atomic_number <= 47
        or atomic_number >= 71 and atomic_number <= 79
        or atomic_number >= 103 and atomic_number <= 111 then
        return "Transition Metal"
    end

    return family[atomic_number]
end

return family_of_atomic_number
