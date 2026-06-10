local format = require("chemical-element.element.format")
local Element = require("chemical-element.element")
local nonmetal = require("chemical-element.elements.nonmetal")

local hydrogen = nonmetal.hydrogen

describe("format", function ()
    describe("format.element_property_keys()", function ()
        local element_property_keys_array = format.element_property_keys()
        local element_property_keys_set = {}

        for i = 1, #element_property_keys_array do
            local header_column_value = element_property_keys_array[i]
            element_property_keys_set[header_column_value] = true
        end

        describe("format.element_property_keys() values can be as Hydrogen index access without returning nil", function ()
            for i = 1, #element_property_keys_array do
                local header_column_value = element_property_keys_array[i]
                local test_string = string.format('hydrogen["%s"] from format.element_property_keys() doesn\'t return nil', header_column_value)
                test(test_string, function ()
                    local fail_message = string.format('hydrogen["%s"] from format.element_property_keys() returned nil', header_column_value)
                    assert.is_not_nil(hydrogen[header_column_value], fail_message)
                end)
            end
        end)

        describe("format.element_property_keys() contains all property keys of Hydrogen object", function ()
            local function get_internal_DATA()
                for i = 1, math.huge do
                    local name, value = debug.getupvalue(Element.formatted_string, i)
                    if not name then
                        break
                    end
                    if name == "DATA" then
                        return value
                    end
                end
            end

            local INTERNAL_DATA = get_internal_DATA()
            local raw_hydrogen_table = INTERNAL_DATA[hydrogen]

            assert(raw_hydrogen_table, "Failed to get internal table data of Hydrogen Element object")

            for hydrogen_property_key, _ in pairs(raw_hydrogen_table) do
                local test_string = string.format('format.element_property_keys() contains "%s"', hydrogen_property_key)
                test(test_string, function ()
                    local fail_message = string.format('format.element_property_keys() doesn\'t contain "%s"', hydrogen_property_key)
                    assert.is_true(element_property_keys_set[hydrogen_property_key], fail_message)
                end)
            end
        end)
    end)
end)
