---@param arg any
---@param value_type_or_predicate? string|table|fun(v:any):boolean
---@return boolean
local function is_array(arg, value_type_or_predicate)
    if type(arg) ~= "table" then return false end

    local count = 0
    local max_key = 0

    for k, v in pairs(arg) do
        if type(k) ~= "number" or k < 1 or k ~= math.floor(k) then
            return false
        end

        if (type(value_type_or_predicate) == "string" and type(v) ~= value_type_or_predicate)
            or (type(value_type_or_predicate) == "table" and (type(v) ~= "table" or getmetatable(v) ~= value_type_or_predicate))
            or (type(value_type_or_predicate) == "function" and not value_type_or_predicate(v)) then
            return false
        end

        count = count + 1
        if k > max_key then max_key = k end
    end

    return max_key == count
end

return is_array
