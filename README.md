# Chemical Element

Chemical element of the periodic table of elements.

[![lua][lua badge]][lua website]
![Git][git badge]
[![GitLab][gitlab badge]][gitlab repo]
[![GitHub][github badge]][github repo]

## Installation & Usage

This lua module can be installed as a [lua rock][lua rock]:

```bash
luarocks install chemical-element
```

Once installed as a dependency it can be imported and used:

```lua
local elements = require("chemical-element.elements")

local carbon = elements["C"]
-- elements[6], elements["c"], and elements["carbon"] would also work exactly the same

print(carbon)

--[[
Element{
    name="carbon",
    symbol="C",
    number=6,
    mass=12.011,
    group=14,
    period=2,
    block='p',
    family="nonmetal",
    oxidation_states={-4, +2, +4},
    electron_configuration="[He]2s²2p²",
    electronegativity=2.55,
    atomic_radius=170,
    ionization_energy=11.26,
    electron_affinity=1.263,
    melting_point=3823,
    boiling_point=4098,
    density=2.267,
    standard_state="solid"
}
]]
```

## Elements Object

This will most likely be one of the main and most used objects of this module.
It contains the `Elements` module object which can be used to get an `Element`
object via its atomic number, symbol, or name making it very easy and convenient
to use `Element` objects.

Reference the [example above](#installation--usage) for how it can be used.

## Element

This lua package makes it possible to programmatically represent a chemical
element. It's built around the `Element` class module table that contains the
properties an element on the periodic table of element has. This includes:

- name
- symbol
- number
- mass
- group
- family
- period
- block
- oxidation states
- electron configuration
- electronegativity
- atomic_radius
- ionization_energy
- electron_affinity
- melting_point
- boiling_point
- density
- standard_state

This is the type of object returned by the exported `Elements` object. Cases of
this class being used external to this module will probably not be too common,
as this module exports concrete instantiated objects for all elements (as of
writing this). An example of its usage is:

```lua
local Element = require("chemical-element.element")
local ElectronConfiguration = require("chemical-element.element.electron_configuration")
local SubshellOccupancy = require("chemical-element.element.subshell_occupancy")

local hydrogen_subshell_occupancy = SubshellOccupancy.new{
    n = 1,
    l = "s",
    electron_count = 1
}

local hydrogen_electron_configuration = ElectronConfiguration.new{
    subshell_occupancy = { hydrogen_subshell_occupancy }
}

local hydrogen = Element.new{
    name = "Hydrogen",
    symbol = "H",
    number = 1,
    mass = 1.008,
    group = 1,
    period = 1,
    oxidation_states = {-1, 1},
    electron_configuration = hydrogen_electron_configuration,
    electronegativity = 2.2,
    atomic_radius = 120,
    ionization_energy = 13.598,
    electron_affinity = 0.754,
    melting_point = 13.81,
    boiling_point = 20.28,
    density = 0.00008988,
    standard_state = "gas"
}
```

This class performs some validations on its constructor arguments to make sure a
valid element is created. If any of these validations fail, an exception is
thrown. For instance a `mass` property must be greater than `0`, a `name` can't
be blank, a `symbol` can only be 1-2 characters, and a block can only be one of
`'s'`, `'p'`, `'d'`, or `'f'` characters or `nil`.

## Elements Module

This package contains instantiated `Element` objects in `elements.*` submodules
organized by their family for each periodic element. For instance, there's an
`elements.alkali_metal` submodule that contains `Element` objects for the alkali
metals. So in most cases it shouldn't be necessary to have to create a new object
for pre-existing elements.

## Partial Element

A "partial" `Element` object is identical to a normal `Element` object except
it has more nil-able properties.

## Molecule & ElementSet Collections

This package also exports an `ElementSet` class that provide specialized
collections for `Element` objects. The `Elements` module object/table is
actually an instance of an `ElementSet` that contains an `Element` object for
every periodic element.

An `ElementSet` will throw an exception if its attempted to be instantiated with
`Element` objects that have conflicting properties. For instance if an element
with atomic number `1` and symbol `'H'` is added to the set then an element with
atomic number `6` and symbol `'H'` is attempted to be added, then it will throw.
Attempting to add a duplicate `Element` will not throw.

## Immutability

This package attempts to make things as immutable as possible so if you're
getting any errors, be sure to check the error messages and that you're not
attempting to mutate an immutable object.

## Debated Conventions and this Module's Conventions

There are conventions regarding element classification that can sometimes vary.
For instance whether to consider elements in group 12 (Zn, Cd, Hg, Cn)
transition metals or post-transition metals and whether Lutetium and Lawrencium
are considered transition metals in group 3 or exclusive to the Lanthanide and
Actinide families and in no group. This package attempts to conform to
whichever convention is most current and/or accurate and:

- treats group 12 elements (Zn, Cd, Hg, Cn) as Post-transition Metals.
- treats Lanthanum and Actinium as Lanthanides and Actinides, 'f' block, period
  7, and in no group.
- treats Lutetium and Lawrencium as Transition Metals, 'd' block, and in
  positions group 3 and periods 6 and 7.

If you feel that it does it incorrectly in some regard, feel free to open an
[issue][issues].

## Misc. Package Info

This lua module was written and is intended for lua 5.1. It doesn't have any
external build dependencies and doesn't use many non standard features so it
will most likely work with other later versions, but no guaranties are made to
its reliability when used with versions other than lua 5.1.

This package uses the luarocks rockspec 3.1 format.

### Running the package locally

To run this project/package locally it must first be installed as a dependency:

```sh
./luarocks make --tree=./lua_modules
```

and then it's entrypoint can be run:

```sh
./lua src/chemical-element/init.lua --help
```

## License

This package uses the [MIT](./LICENSE.txt) license and is free to be used for whatever.

[lua rock]: https://luarocks.org/modules/snap/chemical-element "chemical-element lua rock"
[issues]: https://gitlab.com/luachem/chemical-element/-/issues "chemical-element issues"
[lua badge]: https://img.shields.io/badge/lua-%232C2D72.svg?style=for-the-badge&logo=lua&logoColor=white "lua"
[lua website]: https://www.lua.org/manual/5.1/ "lua"
[git badge]: https://img.shields.io/badge/git-%23F05033.svg?style=for-the-badge&logo=git&logoColor=white "Git"
[gitlab badge]: https://img.shields.io/badge/gitlab-%23181717.svg?style=for-the-badge&logo=gitlab&logoColor=white "GitLab repo"
[gitlab repo]: https://gitlab.com/SnapperGee/chemical-element "GitLab repo"
[github badge]: https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white "GitHub repo"
[github repo]: https://github.com/SnapperGee/chemical-element "GitHub repo"
