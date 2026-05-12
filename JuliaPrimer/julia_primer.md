
![](DCNlogo.png)

# Julia Data Curation Primer
Authors: Alfredo González-Espinoza and Rachel Kurchin, Carnegie Mellon University

Affiliate Contributors (peer reviewers): Lencia McKee and Vicky Rampin 

# Overview
This primer guides data curators, archivists, and librarians in curating Julia programming language files (`.jl`) and research outputs. Julia's unique features—including multiple dispatch, sophisticated package management, Unicode mathematical notation support, and high-performance computing capabilities—create distinct curation challenges that differentiate it from other programming languages used in scientific research. 
The primer aims to help curators assess Julia code quality and dependencies, ensure research code meets FAIR principles, and establish preservation and sharing best practices for computational research outputs. As Julia gains adoption across scientific computing, data science, machine learning, and computational research, understanding its ecosystem becomes essential for effectively curating and preserving Julia-based research software and associated data.

| Topic                             | Description                                                                                                                                                                                                                                                                                                                                                                         |
| :-------------------------------- | :---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| File Extension                    | `.jl` (primary), `.jmd` (Julia Markdown), also potentially `.ipynb` when used in Jupyter notebooks                                                                                                                                                                                                                                                                                        |
| MIME Type                         | text/x-julia                                                                                                                                                                                                                                                                                                                                                                        |
| Versions                          | 1.12.1 is the latest stable version as of writing. <br><br> Julia 1.0 released in 2018 established stability in language features. <br><br> See full version history at [julialang.org/downloads/](https://julialang.org/downloads/)                                                                                                                                                |
| Primary fields or areas of use    | Scientific computing, numerical analysis, computational science, data science, machine learning, statistics, optimization, symbolic computing, high-performance computing                                                                                                                                                                                                           |
| Source and affiliation            | [JuliaLang.org](https://julialang.org/) - Developed at MIT and now maintained by an open-source community                                                                                                                                                                                                                                                                           |
| Metadata standards                | Varies, recommend README and `Project.toml`/`Manifest.toml`, `CITATION.bib`/`CITATION.cff`, `codemeta.json`                                                                                                                                                                                                                                                                                                 |
| Key questions for curation review | <li>What is the purpose of this file? Are any data associated with this file? Where are the referenced data?</li><li>Is there sufficient configuration information about the file to enable reuse? (Version, packages, etc.)</li><li>Does the code use Julia's package management system?</li><li>Does the code follow Julia style conventions and performance best practices?</li> |
| Tools for curation review         | Julia itself and its REPL, any text editor or Integrated Development Environment (IDE) including: VS Code with Julia extension, Jupyter notebooks                                                                                                                                                                                                                                                                        |
| Date Created                      | September, 2025                                                                                                                                                                                                                                                                                                                                                                     |
| Created By                        | Alfredo González-Espinoza and Rachel Kurchin, Carnegie Mellon University                                                                                                                                                                                                                                                                                                            |

Suggested Citation: González-Espinoza, Alfredo and Kurchin, Rachel. (2026) Julia Data Curation Primer. [Data Curation Network GitHub Repository.](https://github.com/DataCurationNetwork/data-primers)


# Table of Contents

[Description of format](#description-of-format)

[Software for viewing or analyzing data](#software-for-viewing-or-analyzing-data)

[Code formatting and style standards](#code-formatting-and-style-standards)

[Common patterns in Julia code design](#common-patterns-in-julia-code-design)

[Key questions to ask yourself](#key-questions-to-ask-yourself-about-data-accessibility-andor-reusability)

[Key clarifications to get from researcher](#key-clarifications-to-get-from-researcher-regarding-accessibility-andor-reusability)

[Applicable metadata standard, core elements and readme requirements](#applicable-metadata-standards-core-elements-and-readme-requirements)

[Documentation standards](#documentation-standards)

[Testing framework](#testing-framework)

[Sample data set citations](#sample-dataset-citations)

[Package and Environment Management](#package-and-environment-management)

[Package registration and citation](#package-registration-and-citation)

[Preservation Actions](#preservation-actions)

[What to look for to make sure this file meets FAIR principles](#what-to-look-for-to-make-sure-this-file-meets-fair-principles)

[Ways in which fields may use this format](#ways-in-which-fields-may-use-this-format)

# Description of Format

Julia is a high-level, high-performance, dynamic programming language specifically designed for numerical and scientific computing. First released in 2012, Julia was created to address the "two language problem" in scientific computing, where researchers would prototype in a high-level language like Python or R but then need to reimplement performance-critical parts in C or Fortran. Julia combines the ease of use of interpreted languages with the performance of compiled languages through sophisticated just-in-time (JIT) compilation.

A `.jl` file contains Julia code with optional comments that explain the code. Julia files can be opened in any text editor or integrated development environment (IDE). Julia programs can include a single file for simple scripts or multiple files organized into modules and packages for complex applications.

Related file formats:

- `.jmd` : Julia Markdown files mixing code and documentation
- `.ipynb` : Jupyter Notebook files containing Julia code with rich text and visualizations
- `Project.toml` and `Manifest.toml` : Configuration files for Julia package management
- `CITATION.bib`/`CITATION.cff` : Citation information files

Julia's distinctive features include multiple dispatch, native Unicode support, optional type annotations, and first-class mathematical notation support. Here is a simple example of Julia code demonstrating key features:


```julia
"""
    fibonacci(n::Integer) -> Integer

Calculate the nth Fibonacci number using dynamic programming — each result is cached
on first computation and reused on subsequent calls, avoiding redundant recursion.
Without caching, computing `fibonacci(n)` would recompute the same values exponentially
many times; with it, each subproblem is solved exactly once in O(n) time.

# Examples
julia> fibonacci(10)
55
"""
const memo = Dict{Int, Int}()

function fibonacci(n::Integer)
    #handling non -ositive numbers (Fibonnaci is only defined for positive numbers)
    if n ≤ 0
        throw(ArgumentError("n must be positive, got $n"))
    end

    # Base cases: F(1) = F(2) = 1 — seed the Dynamic Programming table directly
    n ≤ 2 && return 1

    # Return cached result if available, otherwise compute, store, and return it
    return get!(memo, n) do
        fibonacci(n - 1) + fibonacci(n - 2)
    end
end

# Multiple dispatch means different methods for different types
# It's like having a "cooking" function which changes
# depending on the type of source materials (variabes -> fish/beef/vegetables with skillet/oven/pan)

# my function process for when it receives an integer
process(x::Int64) = x^2

# when it receives a String:
process(x::String) = uppercase(x)

# when it receives an abstract array
process(x::AbstractArray) = map(process, x)

# Unicode mathematical symbols are supported
#examples:

# significance level
α = 0.05  

# power
β = 1 - α  

println("Fibonacci(10) = $(fibonacci(10))")
println("Process integer: $(process(4))")
println("Process string: $(process("test"))")
```

# Software for viewing or editing Julia code

Julia script files (`.jl`) are plain text files that can be edited in any text editor. To execute the scripts, they must be run in Julia via a command line interface (by running `julia my_script.jl`), REPL (Read-Eval-Print Loop, accessed by first running `julia` and then inside the REPL running `include(my_script.jl)`), or IDE (VSCode + Julia plugin).

- **Text editors**: Basic GUI text editors like Notepad (Windows) and TextEdit (macOS) can open and edit `.jl` files, as can command-line-based ones such as Vim and Emacs.
    
- **Integrated Development Environments (IDEs)**:
    - [VS Code with Julia extension](https://www.julia-vscode.org/) - Most popular IDE for Julia development
    - [Jupyter](https://jupyter.org/) with IJulia kernel - Web-based notebook interface
    - [Pluto.jl](https://github.com/fonsp/Pluto.jl) - Reactive notebook environment specific to Julia
- **Julia REPL**: The built-in interactive console that comes with Julia installation, accessed through the command line and sometimes IDEs through plugins.
    

To run Julia code you can use any of the following options:

  - Via command line: run `julia script.jl`
  -  In REPL: Launch Julia by typing `julia` and use `include("my_script.jl")`, or enter individual lines of code directly to run interactively
  -  In VSCode: Use run buttons or keyboard shortcuts, or integrated REPL
  -  In Jupyter/Pluto: Execute cells individually

Key packages for data manipulation and analysis:

1. **DataFrames.jl**: Tabular data manipulation ([docs](https://dataframes.juliadata.org/stable/))
2. **CSV.jl**: Fast CSV reading/writing ([docs](https://csv.juliadata.org/stable/))
3. **Plots.jl**: Unified plotting interface ([docs](https://docs.juliaplots.org/stable/))
4. **StatsBase.jl**: Core statistical functions ([docs](https://juliastats.org/StatsBase.jl/stable/))
5. **Makie.jl**: High-performance visualization ([docs](https://docs.makie.org/stable/))
6. **DifferentialEquations.jl**: Comprehensive DE solver suite ([docs](https://diffeq.sciml.ai/stable/))
7. **Flux.jl**: Machine learning framework ([docs](https://fluxml.ai/Flux.jl/stable/))
8. **MLJ.jl**: Machine learning meta-package ([docs](https://alan-turing-institute.github.io/MLJ.jl/dev/))
9. **Symbolics.jl**: Symbolic mathematics ([docs](https://symbolics.juliasymbolics.org/stable/))
10. **JuMP.jl**: Mathematical optimization ([docs](https://jump.dev/JuMP.jl/stable/))

Note that Julia is a relatively young language, and its package ecosystem continues to change and grow. Users/curators are encouraged to check a package's GitHub repository to inspect wether the package is still actively maintained.

# Code Formatting and Style Standards

Julia follows specific [formatting conventions](https://docs.julialang.org/en/v1/manual/style-guide/) that improve readability and consistency:

## Indentation and Spacing

- Use 4 spaces per indentation level (never tabs)
- Stay within 100 characters per line when possible
- Use spaces around operators: `x + y` not `x+y` (exception: no spaces in keyword arguments: `foo(x, y; option=true)`)
- Use spaces after commas: `foo(x, y)` not `foo(x,y)`

## Naming Conventions

- Functions: lowercase with underscores if needed: `calculate_mean()`
- Types: CamelCase: `MyCustomType`
- Constants: uppercase with underscores: `MAX_ITERATIONS`
- Modules: CamelCase: `MyPackage`
- Mutating functions: append `!`: `sort!(array)`

## Error Messages

- Start with lowercase letter
- No period at the end
- Be descriptive: `"array length must be positive, got $n"`

## Function Organization

- Prefer functions over top-level scripts
- Functions should take arguments rather than operate on global variables (see discussion of variable scope in Julia in [documentation](https://docs.julialang.org/en/v1/manual/variables-and-scoping/))
- Use generic types unless specific types are required

## Examples

### Example 1: Processing different input types

```julia
"""
    process(x) -> Any

Apply a type-appropriate transformation to `x`. Integers are squared,
strings are uppercased, and arrays are processed element-wise.

# Examples
julia> process(3)
9

julia> process("hello")
"HELLO"

julia> process([1, "hi", 4])
[1, "HI", 16]
"""
function process(x)
    error("no implementation for type $(typeof(x))")
end

process(x::Integer) = x^2
process(x::AbstractString) = uppercase(x)
process(x::AbstractArray) = map(process, x)
```

### Example 2: Loading data from different sources

```julia
"""
    get_data(source) -> Any

Load data from `source`, dispatching to the appropriate loader based
on the source type. Supported types: `FileSource`, `DatabaseSource`.
"""
abstract type DataSource end

struct FileSource <: DataSource
    path::String
end

struct DatabaseSource <: DataSource
    connection_string::String
end

function load_data(source::FileSource)
    # Read and return contents from source.path
end

function load_data(source::DatabaseSource)
    # Connect and return query results from source.connection_string
end

get_data(source::DataSource) = load_data(source)
```

## Why This Matters for Curation
 
- Formatting compliance signals alignment with Julia's community standards
- Idiomatic structure makes code easier to assess for readability and correctness
- Well-organized, typed code indicates the author considered reuse and extensibility
- Consistent conventions improve compatibility with the broader Julia ecosystem
 
## What to Look For
 
- Consistent formatting: indentation, spacing, line length, naming conventions
- Typed function arguments that make intended inputs explicit
- Descriptive error messages that include the offending value
- Abstract types and multiple function definitions for the same name (signs of extensible, well-structured code)
- Arguments passed through functions rather than read from globals

# Package and Environment Management

When curating Julia code, it’s important to understand how the project’s dependencies and environment are defined. Two key files handle this:

**Key files**:

- **`Project.toml`**: Direct dependencies and compatibility bounds, project metadata, will be specific to package and Julia version, but should generally be cross-platform compatible
- **`Manifest.toml`**: Exact versions of all dependencies (including transitive), generally system-specific

**Example `Project.toml`**:

```toml
name = "MyJuliaProject"
uuid = "12345678-1234-1234-1234-123456789012"
authors = ["Your Name <your.email@example.com>"]
version = "0.1.0"

[deps]
CSV = "336ed68f-0bac-5ca0-87d4-7b16caf5d00b"
DataFrames = "a93c6f00-e57d-5684-b7b6-d8193f3e46c0"

[compat]
CSV = "0.10"
DataFrames = "1"
julia = "1.6"
```

Julia's built-in package manager simplifies dependency management for packages and specification of environments through the `Pkg` module. 

**Basic `Pkg` commands**:

```julia
# Load the package manager
using Pkg

# Activate project environment
Pkg.activate("path/to/project")

# Add a package
Pkg.add("PackageName")

# Update packages           
Pkg.update()

# Install exact environment from Manifest, 
# OR resolve dependencies and create Manifest 
# if it does not exist                     
Pkg.instantiate()              
```

## Environments

A `Project.toml` file (and optionally an associated `Manifest.toml`) can also be thought of as specifying an *environment* (analogous to Python's `venv` or Anaconda).

**Benefits**:

- Dependency isolation between projects
- Reproducibility across machines
- Simplified collaboration via `Project.toml`/`Manifest.toml` sharing

**Workflow for environment creation**:

```julia
using Pkg

# Create new project
Pkg.generate("MyProject") 

# Activate environment       
Pkg.activate("MyProject")

# Add dependencies        
Pkg.add(["DataFrames", "CSV"])   
```

**Sharing environments**: Generally, only `Project.toml` would be committed to a project repository, though sharing a `Manifest.toml` file can be useful in order to recreate the *exact* set of dependencies. However, note that it will not always be possible to instantiate from a `Manifest.toml` file that was created on a different machine (due to operating system and/or hardware differences). 
If a curator wants to recreate an environment from either a `Project.toml` file or a project and a manifest to evaluate and run code, it can be done by running:

```julia
Pkg.activate("MyProject")
Pkg.instantiate()
```
# Key questions to ask yourself about accessibility and reusability

- **Environment**
  - Are all packages available in the Julia General Registry? Which versions were used?
  - Is the minimum Julia version specified in `Project.toml`?
  - Are `Project.toml` and `Manifest.toml` present for dependency management?
- **Code quality**
  - Are data references accessible? Look for `open()`, `CSV.read()`, `load()`.
  - Are relative paths used throughout? Absolute paths are a portability risk.
  - Are custom types and functions documented with docstrings?
  - Are unit tests present in a `test/` directory? Are the tests runnable?
- **Attribution**
  - Are there linked papers or publications with DOIs?

# Key clarifications to get from the researcher

- **Setup and installation**
  - Are installation and execution instructions included in the README?
  - What Julia version was used for development and testing?
  - Are all packages in the Julia General Registry, or are private packages required?
  - Are there hardware requirements (CPU cores, GPU, memory)?
- **Documentation and citation**
  - Are docstrings included for all public functions and types?
  - Is there a `CITATION.bib` or `CITATION.cff` for attribution?
  - Is the code registered as a Julia package? How should it be cited?
- **Performance and conventions**
  - Are there performance benchmarks or expected runtimes?
  - If using parallel computing, are configuration instructions provided?
  - Does the code follow Julia packaging conventions and module organization?


# Applicable metadata standards, core elements and README requirements

## Tier 1: Minimum requirements

Files:

- `.jl` file(s) with comprehensive docstrings
- README.md with:
    - Project title and purpose
    - Author information and contact
    - Clear entry point identification
    - Julia version requirement
    - Required packages list
    - Basic execution instructions
    - License information
    - Citation information
- `Project.toml` and `Manifest.toml`
- LICENSE file
- `CITATION.bib` or `CITATION.cff` or `codemeta.json`

Metadata:

- Title and author information
- Julia version and package dependencies
- License specification
- Citation format

## Tier 2: Runnable submission requirements

Additional files:

- Comprehensive docstrings with examples and doctests
- Detailed user documentation
- Example scripts demonstrating usage
- Sample input/output files
- Unit tests in test/ directory
- Relative pathnames only

## Tier 3: Comprehensive metadata and documentation

Additional files:

- Developer documentation using Documenter.jl
- Performance benchmarks and profiling results
- Detailed algorithmic documentation
- Integration examples

Metadata:

- Hardware requirements documentation
- Performance characteristics
- Workflow demonstrations
- Registry registration information

# Documentation standards

Beyond a README, Julia  includes built-in documentation tools that support clear, structured and machine readable  documentation. These features can be leveraged to improve accessibility and long term reuse:

## Docstrings

Use triple quotes with proper formatting:

```julia
"""
    function_name(arg1::Type1, arg2::Type2; keyword=default) -> ReturnType

Brief description of what the function does.

# Arguments
- `arg1::Type1`: Description of first argument
- `arg2::Type2`: Description of second argument
- `keyword=default`: Description of keyword argument

# Returns
- `ReturnType`: Description of return value

# Examples
julia> function_name(1, 2)
3

# Notes
Additional implementation details or algorithm information.
"""
```

## Documenter.jl integration

For packages, developers may use Documenter.jl to generate comprehensive documentation:

- Organize docs in `docs/src/` directory
- Use `docs/make.jl` for documentation building
- Include doctests that are automatically verified
- Support mathematical notation with LaTeX/Unicode

## Mathematical notation

Julia supports Unicode mathematical symbols natively, this is essential for documentation of mathematical objects without losing the interpretability that mathematical notation has.

- Use `\alpha[TAB]` to insert α in code
- LaTeX notation in docstrings: `\$\\mathcal{X}_0\$`


# Testing framework

Julia has a testing ecosystem (`Test.jl`) that makes testing docummentation and implementation simple. 

## Common test organization

```
test/
├── runtests.jl          # Main test runner
├── test_module1.jl      # Tests for specific modules
├── test_module2.jl
└── Project.toml         # Test-specific dependencies
```

## Test.jl usage

```julia
using Test

@testset "Mathematical Functions" begin
    @test fibonacci(1) == 1
    @test fibonacci(2) == 1
    @test fibonacci(10) == 55
    @test_throws ArgumentError fibonacci(-1)
end
```

## Doctests

Include executable examples in docstrings:

```julia
"""
Examples that are automatically tested:

julia> 2 + 2
4
"""
```


# Package registration 

**Julia General Registry**: The primary repository for Julia packages, enabling automatic installation and discovery. While creating a public Julia repository doesn't necessarily requires registration, this process ensures the package follows community standards and makes it directly accessible via the package manager (once a package is registered, it can be installed by running `Pkg.add("PackageName.jl")`, or in the REPL as `]add PackageName`, where the `]` accesses the package manager mode of the REPL)

**Registration benefits**:

- Automatic dependency resolution
- Version management
- Enhanced discoverability
- Citation tracking


**Registration process**: Use Registrator.jl or PkgTemplates.jl to facilitate registration in Julia General Registry.

# Preservation Actions

- Julia files are UTF-8 encoded plain text, ensuring long-term readability
- UTF-8 encoding is essential for preserving Unicode mathematical symbols
- Include `Project.toml` and `Manifest.toml` for exact dependency reproduction
- Julia maintains backward compatibility since v1.0, but specify versions used
- Provide comprehensive docstrings using Julia's built-in documentation system
- Consider registering important packages in Julia General Registry
- Deposit in repositories providing persistent identifiers (DOIs)
- For research software, consider publication in Journal of Open Source Software (JOSS)

# What to look for to make sure this file meets FAIR principles

## Findable

- Code has globally unique persistent identifier (DOI)
- Rich metadata description including keywords, abstract
- Clear identification of associated data
- Registration in searchable resources (Julia General Registry, repositories)

## Accessible

- Code retrievable via standardized protocols (HTTP/HTTPS)
- Metadata remain accessible even if code becomes unavailable
- Clear access procedures documented
- Open source license when possible

## Interoperable

- Follows Julia language conventions and community standards
- Uses documented APIs for external software interaction
- Input/output formats use standard, documented formats
- Dependencies clearly specified in `Project.toml`

## Reusable

- Clear, accessible license (MIT, BSD, GPL, etc.)
- Detailed provenance and development history
- Comprehensive documentation and examples
- Domain-relevant community standards compliance
- Complete dependency documentation
- Test suite demonstrating correctness

# Ways in which fields may use this format

Julia has gained adoption across scientific and research domains due to its high performance and ease of use:

- **Scientific Computing**: Differential equations, numerical simulations, optimization problems
- **Machine Learning and AI**: Deep learning, statistical modeling, natural language processing
- **Computational Biology**: Sequence analysis, phylogenetics, bioinformatics pipelines
- **Quantum Computing**: Quantum algorithm simulation, quantum optics modeling
- **Finance and Economics**: Risk modeling, algorithmic trading, econometric analysis
- **Astronomy and Space Sciences**: Astronomical data analysis, orbital mechanics, telescope control
- **Climate Science**: Climate modeling, weather prediction, oceanographic research
- **High-Performance Computing**: Parallel algorithms, distributed computing, GPU acceleration
- **Mathematics**: Symbolic computation, numerical analysis, mathematical modeling
- **Data Science**: Statistical analysis, data visualization, machine learning pipelines
- **Optimization**: Linear programming, nonlinear optimization, constraint satisfaction
- **Physics Simulations**: Particle physics, condensed matter, plasma physics

While applications vary by field, the `.jl` format remains consistent. Differences lie in imported packages and computational techniques employed.

## Resources

**Documentation & Tutorials**:

- [Julia Documentation](https://docs.julialang.org/en/v1/) - Official language documentation
- [Julia Academy](https://juliaacademy.com/) - Free courses
- [Julia by Example](https://juliabyexample.helpmanual.io/) - Example-driven learning
- [Think Julia](https://benlauwens.github.io/ThinkJulia.jl/latest/book.html) - Comprehensive introduction

**Community Resources**:

- [Julia Discourse](https://discourse.julialang.org/) - Community forum
- [JuliaHub](https://juliahub.com/) - Package repository and documentation
- [Julia Observer](https://juliaobserver.com/) - Package discovery and trends