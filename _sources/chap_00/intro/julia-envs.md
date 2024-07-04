# Installing Packages and Adding New Environments

In this section, we will explore the advanced setup of Julia programming environment. This includes installing Julia packages and creating isolated environments for different projects. These practices ensure that Julia projects will have the correct dependencies, avoiding conflicts and making our work more reproducible and manageable.


## Installing Packages and Creating Environments in Julia

Julia has a built-in package manager that makes it easy to install and manage packages, as well as create isolated environments for different projects. Using the command line tool to install Julia packages and create environments is the recommended approach, as it ensures a smooth and efficient setup process. However, you can also install packages directly within a Jupyter Notebook.

### Installing Packages via Julia REPL

To install a package, follow these steps:

1. **Open the Julia REPL**:
   - Start the Julia REPL (Read-Eval-Print Loop) by typing `julia` in a terminal or command prompt.

2. **Enter Package Mode**:
   - Once the REPL is open, type `]` to enter package mode.

3. **Install the Package**:
   - Type `add PackageName` to install a package. For example, to install the `Plots` package, type:
     ```julia
     ] add Plots
     ```

### Installing Packages in a Jupyter Notebook

If you are working within a Jupyter Notebook and prefer not to use the terminal, you can also install packages directly from the notebook. Here’s how to do it:

1. **Open a Jupyter Notebook**:
   - Start your Jupyter Notebook server and open a new notebook.

2. **Install the Package**:
   - Use the `Pkg` module to install packages directly from a code cell. For example, to install the `Plots` package, run the following code in a cell:
     ```julia
     using Pkg
     Pkg.add("Plots")
     ```

3. **Load the Package**:
   - After installing the package, you can load it as usual:
     ```julia
     using Plots
     ```

## Setting up the Julia Environment

Once Julia is installed, the next step is to set up the Julia environment. This involves installing packages and setting up a code editor or IDE.

### Creating and Managing Environments in Julia

Julia, like Python, supports the creation of separate environments to manage dependencies for different projects. This helps avoid conflicts between packages and ensures reproducibility. Julia provides the `Pkg` module for package management, which allows you to create and manage environments.

#### Step-by-Step Guide to Creating and Using Environments

1. **Start Julia**:
   Open a terminal and start the Julia REPL by typing `julia`.

2. **Creating a New Environment**:
   Use the `Pkg` module to create a new environment. You typically do this within the directory of your project.

   ```julia
   using Pkg

   # Create a new environment in the current directory
   Pkg.activate(".")
   ```
Alternatively, you can specify a different directory:

```julia
Pkg.activate("path/to/your/project")
```


### Adding Packages to the Environment:

Once the environment is activated, you can add packages to it. This installs the packages only for this environment.

```bash
Pkg.add("DataFrames")
Pkg.add("Plots")
```

## List Installed Packages:
Enter the package mode by typing ], and then use the status command:

```julia
] status
```

Or Directly from Julia REPL like this:

```bash
Pkg.status()
```

This will display a list of all installed packages in the current environment, along with their versions.

## Using a Script or Jupyter Notebook

You can also list the installed packages programmatically within a Julia script or Jupyter Notebook. Here’s how you can do it:

**Example in a Julia Script**

```julia
using Pkg

# Activate the desired environment
Pkg.activate("path/to/your/project")

# List installed packages
Pkg.status()
```


### Creating a Project.toml and Manifest.toml:

When you add packages to an environment, Julia creates a Project.toml and a Manifest.toml file in the directory. These files record the environment’s dependencies and their exact versions.

### Using the Environment:
Once you have created an environment and installed the necessary packages, you need to activate this environment whenever you start a new Julia session. Activating the environment ensures that Julia uses the specific packages and settings defined for your project. Here is a step-by-step how to do that:

1. Open a Terminal: Start a new terminal session.
2. Navigate to Your Project Directory: Change your directory to the location of your project. This is where your Project.toml and Manifest.toml files are located.
	```bash
	cd path/to/your/project
	```
3. Start Julia:Launch the Julia REPL by typing julia in the terminal
	```bash
	julia
	```
4. Activate the Environment: In the Julia REPL, use the Pkg module to activate your project environment. This step tells Julia to use the package environment specified in the Project.toml and Manifest.toml files of your project.
	```bash
	using Pkg
	
	# Activate the environment
	Pkg.activate(".")
	```

## Example Workflow
Here’s an example workflow for creating and using a Julia environment:


1. Navigate to Your Project Directory:
	```sh
	cd path/to/your/project
	```
2. Start Julia:
	```sh
	julia
	```
3. Activate the Environment:
	```julia
	using Pkg
	Pkg.activate(".")
	```
4. Add Packages:
	```julia
	Pkg.add("DataFrames")
	Pkg.add("Plots")
	```

5. Use the Packages in Your Code: Now you can use the added packages in your Julia scripts or REPL.

	```julia
	using DataFrames
	using Plots
	
	# Example usage
	df = DataFrame(A = 1:4, B = ["x", "y", "z", "w"])
	println(df)
	
	plot(df.A, title = "Simple Plot")
	```

## Environment Deactivation

To deactivate the environment in Julia, you can switch back to the default environment or another environment. Julia doesn't have a specific "deactivate" command, but you can achieve the same result by activating the default environment. Here's how to do it:

### Switching to the Default Environment

1. Start Julia: Open the Julia REPL by typing julia in your terminal or command prompt.
2. Deactivate the Current Environment by Activating the Default Environment:
Use the Pkg module to switch back to the default environment (@v1.x, where x is your Julia version).
	```julia
	using Pkg
	Pkg.activate()
	```
This command switches the context back to the default environment, effectively deactivating the current project environment.

### Example in a Julia REPL

```julia
julia> using Pkg

julia> Pkg.activate("path/to/your/project")
  Activating environment at `path/to/your/project/Project.toml`

# Now to deactivate, activate the default environment
julia> Pkg.activate()
  Activating environment at `~/.julia/environments/v1.x/Project.toml`
```

### Example in a Script or Jupyter Notebook

If you're working within a script or Jupyter Notebook, you can also switch environments programmatically:

```julia
using Pkg

# Activate your project environment
Pkg.activate("path/to/your/project")

# Perform some operations...

# Deactivate by switching back to the default environment
Pkg.activate()
```

## Advantages of Using Environments
- **Isolation**: Each project can have its own set of dependencies, avoiding conflicts between packages.
- **Reproducibility**: The exact versions of packages used in a project are recorded, making it easy to reproduce the environment later.
- **Flexibility**: You can easily switch between different environments for different projects.

## Conclusion
Creating and managing environments in Julia is a straightforward process that offers significant benefits for dependency management and project isolation. By using environments, you can ensure that your projects remain reproducible and free from dependency conflicts.
