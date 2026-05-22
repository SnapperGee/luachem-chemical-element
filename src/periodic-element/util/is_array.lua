---@generic T
---@param arg T
---@param value_type_or_predicate? string|table|fun(v:T):boolean
---@return boolean
local function is_array(arg, value_type_or_predicate)
    if type(arg) ~= "table" then return false end

    if next(arg) == nil then return true end

    if rawget(arg, 1) == nil then return false end

    local predicate_type = type(value_type_or_predicate)

    assert(
        value_type_or_predicate == nil or predicate_type == "string" or predicate_type == "table" or predicate_type == "function",
        "type or predicate function expected but got: " .. predicate_type
    )

    for k, v in pairs(arg) do
        if type(k) ~= "number" or k < 1 or k ~= math.floor(k) then
            return false
        end

        if k > 1 and rawget(arg, k - 1) == nil then
            return false
        end

        if value_type_or_predicate then
            if predicate_type == "string" then
                if type(v) ~= value_type_or_predicate then return false end
            elseif predicate_type == "table" then
                if type(v) ~= "table" or getmetatable(v) ~= value_type_or_predicate then return false end
            elseif predicate_type == "function" then
                local predicate_result = value_type_or_predicate(v)
                local predicate_result_type = type(predicate_result)
                if predicate_result_type ~= "boolean" then error("predicate returned non boolean: " .. predicate_result_type) end
                if not predicate_result then return false end
            else
                error("value type or predicate of type string, table, or function expected but got: " .. predicate_type)
            end
        end
    end

    return true
end

return is_array
