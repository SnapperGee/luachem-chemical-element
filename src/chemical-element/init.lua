local parser = require("chemical-element.cli")
local elements = require("chemical-element.elements")
local format = require("chemical-element.element.format")

local args = parser:parse()

if args.version then
    print("periodic-element 0.0.alpha.3-1")
    os.exit()
end

local unrecognized_element_args = {}
local element_strings = {}

if args.csv then
    element_strings[1] = format.csv.header_row
end

for i = 1, #args.element do
    local element_arg = args.element[i]
    local element = elements[element_arg] or elements[tonumber(element_arg)]

    if element then
        if args.csv then
            element_strings[#element_strings+1] = format.csv(element)
        else
            element_strings[#element_strings+1] = element:formatted_string()
        end
    else
        unrecognized_element_args[#unrecognized_element_args+1] = element_arg
    end
end

if args.atomic then
    for i = 1, #args.atomic do
        local number_arg = args.atomic[i]
        local element = elements[number_arg]

        if element then
            if args.csv then
                element_strings[#element_strings+1] = format.csv(element)
            else
                element_strings[#element_strings+1] = element:formatted_string()
            end
        else
            unrecognized_element_args[#unrecognized_element_args+1] = number_arg
        end
    end
end

if args.symbol then
    for i = 1, #args.symbol do
        local symbol_arg = args.symbol[i]
        local element = elements[symbol_arg]

        if element then
            if args.csv then
                element_strings[#element_strings+1] = format.csv(element)
            else
                element_strings[#element_strings+1] = element:formatted_string()
            end
        else
            unrecognized_element_args[#unrecognized_element_args+1] = symbol_arg
        end
    end
end

if args.name then
    for i = 1, #args.name do
        local name_arg = args.name[i]
        local element = elements[name_arg]

        if element then
            if args.csv then
                element_strings[#element_strings+1] = format.csv(element)
            else
                element_strings[#element_strings+1] = element:formatted_string()
            end
        else
            unrecognized_element_args[#unrecognized_element_args+1] = name_arg
        end
    end
end

if #element_strings ~= 0 then
    if args.csv then
        local elements_string = table.concat(element_strings, "\n")
        print(elements_string)
    else
        local elements_string = table.concat(element_strings, "\n\n")
        print(elements_string)
    end
end

if #unrecognized_element_args ~= 0 then
    local unrecognized_elements_string = string.format(
        'unrecognized element atomic numbers, symbols, and/or names: "%s"\n',
        table.concat(unrecognized_element_args, '", "')
    )

    print(unrecognized_elements_string)
end
