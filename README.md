# RealQuo.jl

**RealQuo.jl** is a Julia package for studying the topology and contractibility of real toric varieties arising from Weyl polytopes.

## Installation

Activate and instantiate the package locally using Julia's package manager:

```julia
] activate .
] instantiate
```

## Usage

Load the package in Julia:

```julia
using RealQuo
```

### Examples

```julia
# Example 1: Compute orbits by Weyl type "A" with rank 2
oa2 = OrbitsbyWT("A", 2)
println(oa2)

# Example 2: Access chain complex (replace with actual function)
# chain = Chaincpx("A", 2)
# println(chain)

# Example 3: Include and use other functions as needed
# result = Addelmt(...) # replace with proper arguments
# println(result)
```

## Project Structure

- `src/` — contains the source code of the package.
- `test/` — contains test files (basic tests included).
- `Project.toml` — project dependencies and version information.
- `Manifest.toml` — pinned dependency versions.

## Author

Tao Gong — [GitHub Profile](https://github.com/ggttaaoo)

## License

This package is released under the MIT License.
