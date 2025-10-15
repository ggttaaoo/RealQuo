# RealQuo.jl

*A Julia package for verifying contractibility of the quotient of a real toric permutohedron variety.*

---

##  Overview

`RealQuo.jl` provides computational tools for analyzing the **celluar structure** and **contractibility** of a **real toric variety** $Y$ defined by a **$W$-permutohedron** with $W$ a **Weyl group**.  

**For a theoretic background see [arXiv:2410.14653](https://arxiv.org/abs/2410.14653).** The quotient $Y/W$ is homeomorphic to a union of cubes $[0,1]^r$, indexed by $(\mathbb{Z}/2)^r$, glued along proper faces. Following a gluing order, each cube, index by $u\in(\mathbb{Z}/2)^r\setminus (1,1,\ldots,1)$, has the glued space $\mathrm{G}_u$. If each $\mathrm{G}_u$ is contractible, then $Y/W$ is contractible.

#### Celluar structure
```math
Y/W=\bigcup_{u\in (\mathbb{Z}/2)^r}\{u\}\times [0,1]^r.
```

#### Gluing step
```math
Z=\{(1,1,\ldots,1)\}\times [0,1]^r, \quad Z_u=Z_{v}\bigcup_{\mathrm{G}_u}\{u\}\times [0,1]^r.
```


---

## Installation
Download and install [Julia](https://julialang.org/downloads/). There are two methods for installing this package, of which **Method 1** may require Account and Password.

#### Method 1
 In the REPL (Julia's interactive command-line), copy-paste and run the below:

```julia
using Pkg; Pkg.add(url="https://github.com/ggttaaoo/RealQuo.jl")
```

This will install the `RealQuo.jl` package and its dependencies. To load the package, copy-paste and run the below:

```julia
using RealQuo
```

#### Method 2
Choose a directory you like, copy-paste-run the below in bash:
```bash
git clone https://github.com/ggttaaoo/RealQuo.git
```

In the same directory, copy-paste-run the below in bash:
```bash
cd RealQuo
```
Then open Julia
```bash
julia
```
To load the package, copy-paste-run the below in Julia
```julia
using Pkg
Pkg.activate("RealQuo")
using RealQuo
```

---

## Examples

Try the following in Julia. This is an example when the Weyl group is of type $A_2$.
```julia
# Compute orbits by Weyl group of type $A_2$
oa2 = OrbitsbyWT("A", 2);

# Get glued spaces $G_u$
ga2 = Gluing(oa2)

# Check contractibility of each $G_u$
ca2 = Conty(ga2)
```

**Output:**

```
ga2 = Gluing(oa2)
3-element Vector{Any}:
 Vector{Any}[[0, 0, 1], [(Int64[], [1]), (Int64[], [2])]]
 Vector{Any}[[1, 0, 1], [(Int64[], [2]), ([1], Int64[])]]
 Vector{Any}[[0, 1, 1], [(Int64[], [1]), ([2], Int64[])]]

ca2 = Conty(ga2)
3-element Vector{Any}:
 Any[Any[0, 0, 1], "trivial"]
 Any[Any[1, 0, 1], "trivial"]
 Any[Any[0, 1, 1], "trivial"]
```

***Explanation for `ga2`***

`ga2` contains three elements, remembering the irreducible components of the glued subspaces $\mathbf{G}_u$ for $u\in(\mathbb{Z}/2\mathbb{Z})^2\setminus (1,1)$. 

In the second element 
```
Vector{Any}[[1, 0, 1], [(Int64[], [2]), ([1], Int64[])]]
```
The vector `[1,0,1]` has its first two coordinates representing the index vector $(1,0)$ in $(\mathbb{Z}/2\mathbb{Z})^2$, and the last coordinate `1` exists because of a computational reason.

The vector`[(Int64[], [2]), ([1], Int64[])]]` remembers the components of the glued subspace $\mathbf{G}_{(1,0)}$. One component `(Int64[], [2])` is a face of the square $[0,1]^2$, where the first position `Int64[]` remembers which coordinates of the face being $0$, and the second position `[2]` remembers which coordinates of the face being $1$.
So we have
```math
\mathbf{G}_{(1,0)}=[0,1]\times \{1\}\bigcup \{0\}\times [0,1].
```

***Explanation for `ca2`***

`ca2` contains three elements, remembering contractibilities of the glued subspaces $\mathbf{G}_u$ for $u\in(\mathbb{Z}/2\mathbb{Z})^2\setminus (1,1)$. 

In the second element 
```
Any[Any[1, 0, 1], "trivial"]
```
The vector `[1,0,1]` represents the index vector $(1,0)$. `"trivial"` means the $\mathbf{G}_u$ is contractible.


**A trick**

One can use the following code to see which $\mathbf{G_u}$ is not contractible.

```julia
con=ca2

cons = []
for i in con 
    if  i[2]!="trivial"
    push!(cons,i)
    end
end
```





## Authors
[Colin Crowley](https://sites.google.com/view/colincrowley/home), 
[Tao Gong](https://ggttaaoo.github.io), 
[Connor Simpson](https://connorgs.net).

## License

This package is released under the MIT License.
