local argparse = require("argparse")

local function normalize_symbol_or_name(a_string)
    a_string = a_string:match("^%s*(.-)%s*$")
    a_string = a_string:gsub("%s+", " ")
    a_string = a_string:sub(1,1):upper() .. a_string:sub(2):lower()
    return a_string
end

local parser = argparse("periodic-element", "Element of the periodic table of elements.")

parser:argument("element", "An element's atomic number, symbol, or name.")
    :args("*")

parser:flag("-v --version", "Print version of currently installed script and exit.")

parser:flag("-c --csv", "Output elements as csv.")

parser:option("-a --atomic", "Use an element's atomic number to identify it.")
    :args("+")
    :convert(tonumber)

parser:option("-s --symbol", "Use an element's symbol to identify it.")
    :args("+")
    :convert(normalize_symbol_or_name)

parser:option("-n --name", "Use an element's name to identify it.")
    :args("+")
    :convert(normalize_symbol_or_name)

return parser
