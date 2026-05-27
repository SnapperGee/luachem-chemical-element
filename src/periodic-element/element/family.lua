local family = {
    [3]="alkali metal",
    [11]="alkali metal",
    [19]="alkali metal",
    [37]="alkali metal",
    [55]="alkali metal",
    [87]="alkali metal",

    [4]="alkaline earth metal",
    [12]="alkaline earth metal",
    [20]="alkaline earth metal",
    [38]="alkaline earth metal",
    [56]="alkaline earth metal",
    [88]="alkaline earth metal",

    [13]="post-transition metal",
    [30]="post-transition metal",
    [31]="post-transition metal",
    [48]="post-transition metal",
    [49]="post-transition metal",
    [50]="post-transition metal",
    [80]="post-transition metal",
    [81]="post-transition metal",
    [82]="post-transition metal",
    [83]="post-transition metal",
    [84]="post-transition metal",
    [112]="post-transition metal",
    [113]="post-transition metal",
    [114]="post-transition metal",
    [115]="post-transition metal",
    [116]="post-transition metal",

    [5]="metalloid",
    [14]="metalloid",
    [32]="metalloid",
    [33]="metalloid",
    [51]="metalloid",
    [52]="metalloid",

    [9]="halogen",
    [17]="halogen",
    [35]="halogen",
    [53]="halogen",
    [85]="halogen",
    [117]="halogen",

    [2]="noble gas",
    [10]="noble gas",
    [18]="noble gas",
    [36]="noble gas",
    [54]="noble gas",
    [86]="noble gas",
    [118]="noble gas",

    [1]="nonmetal",
    [6]="nonmetal",
    [7]="nonmetal",
    [8]="nonmetal",
    [15]="nonmetal",
    [16]="nonmetal",
    [34]="nonmetal"
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
        return "lanthanide"
    end

    if atomic_number >= 89 and atomic_number <= 102 then
        return "actinide"
    end

    if atomic_number >= 21 and atomic_number <= 29
        or atomic_number >= 39 and atomic_number <= 47
        or atomic_number >= 71 and atomic_number <= 79
        or atomic_number >= 103 and atomic_number <= 111 then
        return "transition metal"
    end

    return family[atomic_number]
end

return family_of_atomic_number
