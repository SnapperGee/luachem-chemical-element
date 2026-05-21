local SUPERSCRIPT_CHARACTER = {
    [0]="⁰", "¹", "²", "³", "⁴", "⁵", "⁶", "⁷", "⁸", "⁹", ["-"] = "⁻", ["+"] = "⁺"
}

local SUBSCRIPT_CHARACTER = {
    [0] = "₀", "₁", "₂", "₃", "₄", "₅", "₆", "₇", "₈", "₉", ["-"] = "₋", ["+"] = "₊"
}

--- Converts an integer to a superscript or subscript string. For instance, the integer
--- ``5`` gets converted to ``"⁵"`` as a superscript or ``"₅"`` as a subscript.
---@param script_type "super"|"sub" -- whether to convert the passed integer to a superscript or subscript string.
---@param int integer -- the integer to convert to a superscript or subscript string.
---@return string
local function to_script(script_type, int)
    assert(
        type(int) == "number" and int == math.floor(int),
        "integer expected but got: " .. tostring(int)
    )

    local SUPER

    if script_type == "super" then
        SUPER = SUPERSCRIPT_CHARACTER
    elseif script_type == "sub" then
        SUPER = SUBSCRIPT_CHARACTER
    else
        error("script type of \"super\" or \"sub\" expected but got: " .. tostring(script_type), 2)
    end

    if int == 0 then
        return "⁰"
    end

    local out = {}

    if int < 0 then
        out[#out + 1] = SUPER["-"]
        int = -int
    end

    local pow = 1
    while pow * 10 <= int do
        pow = pow * 10
    end

    while pow > 0 do
        local digit = math.floor(int / pow) -- leading digit
        int = int - digit * pow             -- remove that digit
        pow = math.floor(pow / 10)          -- step down
        out[#out + 1] = SUPER[digit]
    end

    return table.concat(out)
end

--- Converts an integer to a superscript string. For instance, the integer
--- ``5`` gets converted to ``"⁵"``.
---@param int integer -- the integer to convert to a superscript string.
---@return string
local function to_superscript(int)
    return to_script("super", int)
end

--- Converts an integer to a subscript string. For instance, the integer
--- ``5`` gets converted to ``"₅"``.
---@param int integer -- the integer to convert to a subscript string.
---@return string
local function to_subscript(int)
    return to_script("sub", int)
end

return {
    super = to_superscript,
    sub = to_subscript
}
