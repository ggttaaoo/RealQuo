# RealQuo.jl

*a Julia package for studying the topology and contractibility of real toric varieties arising from Weyl polytopes.*

---

## ✨ Overview

`WeylToric.jl` provides computational tools for analyzing **toric varieties** and their **real loci** that are associated with **Weyl polytopes** of root systems.  
It implements algebraic and topological constructions that appear in the study of reflection groups, orbit decompositions, and the contractibility phenomena of real toric varieties.

The package is designed for use in research on:
- Coxeter groups and their reflection arrangements  
- Toric geometry from root systems  
- Topological and combinatorial invariants of real algebraic varieties  

---

## ⚙️ Installation

You can install the package directly from GitHub:

```julia
julia> ]
pkg> add https://github.com/<yourusername>/WeylToric.jl



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
