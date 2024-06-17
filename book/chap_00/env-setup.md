# Julia Environment Setup

Julia is a high-level, high-performance programming language for technical computing, with syntax that is familiar to users of other technical computing environments. In this lesson, we will cover how to install Julia and set up the environment for different platforms.

## Installing Julia

The first step to setting up the Julia environment is to install Julia itself. Julia can be installed on various platforms, including Windows, macOS, and Linux. You can download the latest version of Julia from the [official Julia website](https://julialang.org/downloads/).


### Installing Julia on Windows

To install Julia on Windows, follow these steps:

1. **Download the Julia Installer**:
   - Visit the [official Julia website](https://julialang.org/downloads/) and download the installer for Windows.

2. **Run the Installer**:
   - Locate the downloaded installer file and double-click it to run the installer.
   - Follow the on-screen prompts to install Julia.
   - During the installation process, you will be asked to choose an installation directory. You can choose any directory, but it is recommended to select a directory that does not require administrator privileges to modify.

3. **Add Julia to the System PATH Environment Variable**:
   - After the installation is complete, you need to add Julia to the system PATH to make it accessible from the command line.
   - Right-click on the Windows Start button and select "System".
   - In the System Properties window, click on "Advanced system settings" on the left side.
   - In the System Properties dialog, click on the "Environment Variables" button.
   - In the Environment Variables window, under "System Variables", scroll down and select the "Path" variable, then click on "Edit".
   - In the Edit Environment Variable dialog, click on "New" and add the path to the Julia binary directory (e.g., `C:\Julia-1.6.3\bin`).
   - Click "OK" to close all the windows.

4. **Verify the Installation**:
   - Open a new Command Prompt window.
   - Type `julia` and press Enter.
   - If Julia is installed correctly, you will see the Julia REPL (Read-Eval-Print Loop) start up, displaying the version number and a prompt where you can enter Julia commands.

### Example

Here’s a step-by-step example:

1. **Download Julia**:
   - Go to [https://julialang.org/downloads/](https://julialang.org/downloads/) and download the Windows installer.

2. **Run Installer**:
   - Double-click the installer file `julia-1.10.4-win64.exe` (or the latest version).
   - Follow the installation prompts and choose an installation directory, e.g., `C:\Julia-1.10.4`.

3. **Add to PATH**:
   - Right-click the Start button, select "System".
   - Click on "Advanced system settings" and then "Environment Variables".
   - Under "System Variables", find "Path" and click "Edit".
   - Click "New" and add `C:\Julia-1.10.4\bin`.
   - Click "OK" to close all windows.

4. **Verify**:
   - Open Command Prompt (Press `Win + R`, type `cmd`, and press Enter).
   - Check the version
   ```bash
 	julia --version
 	```
	This should display the version of Julia that is installed like this: 

 	```text
 	julia version 1.10.4
 	```
 	- If the installation was successful you launch Julia REPL like this: 
   		- Type `julia` and press Enter.
   		- You should see the Julia REPL prompt like this:
     	```bash
     	julia>
     	```

### Using Chocolatey

1. **Install Chocolatey**:
   - Open PowerShell as an Administrator.
   - Run the following command to install Chocolatey:
     ```powershell
     Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor  [System.Net.SecurityProtocolType]::Tls12; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
     ```

2. **Install Julia Using Chocolatey**:
   - Open a new PowerShell window as an Administrator.
   - Run the following command to install Julia:
     ```powershell
     choco install julia -y
     ```

3. **Verify Installation**:
   - Open a new Command Prompt window.
   - Type `julia` and press Enter.
   - You should see the Julia REPL start up.

### Using Windows Package Manager (winget)

1. **Install Windows Package Manager (winget)**:
   - Ensure you have Windows 10 version 1809 (Build 17763) or later.
   - Open Command Prompt or PowerShell.

2. **Install Julia Using winget**:
   - Run the following command to install Julia:
     ```powershell
     winget install JuliaLanguage.Julia
     ```

3. **Verify Installation**:
   - Open a new Command Prompt window.
   - Type `julia` and press Enter.
   - You should see the Julia REPL start up.

By following these steps, you will have Julia installed and set up on your Windows system, ready for use in development and scientific computing.


### macOS

To install Julia on macOS, follow these steps:

#### Method 1: Using the Official Installer

1. **Download the Julia Installer**:
   - Visit the [official Julia website](https://julialang.org/downloads/) and download the installer for macOS.

2. **Run the Installer**:
   - Locate the downloaded installer file and double-click it to run the installer.
   - Follow the on-screen prompts to install Julia.
   - During the installation process, you will be asked to choose an installation directory. You can choose any directory, but it is recommended to select a directory that does not require administrator privileges to modify.

3. **Add Julia to the System PATH Environment Variable**:
   - Open the Terminal app.
   - Add the following line to your `.bash_profile`, `.zshrc`, or `.bashrc` file in your home directory, depending on the shell you are using:
     ```bash
     export PATH="/path/to/julia/bin:$PATH"
     ```
     Replace `/path/to/julia` with the actual path to the Julia installation directory.
   - Save the file and reload the terminal configuration by running:
     ```bash
     source ~/.bash_profile
     ```
     or
     ```bash
     source ~/.zshrc
     ```

4. **Verify the Installation**:
   - Open a new terminal window.
   - Type `julia --version` and press Enter.
   - This should display the version of Julia that is installed.

#### Method 2: Using Homebrew

Homebrew is a popular package manager for macOS that can simplify the installation process.

1. **Install Homebrew**:
   - If you do not already have Homebrew installed, you can install it by opening Terminal and running the following command:
     ```bash
     /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
     ```

2. **Install Julia Using Homebrew**:
   - Once Homebrew is installed, you can install Julia by running:
     ```bash
     brew install julia
     ```

3. **Verify the Installation**:
   - Open a new terminal window.
   - Type `julia --version` and press Enter.
   - This should display the version of Julia that is installed.

You can install Julia on macOS using either the official installer or Homebrew. Both methods are straightforward and will set up Julia for use on your system. After installation, ensure Julia is added to your system PATH and verify the installation by checking the Julia version.

### Example Commands

#### Using the Official Installer
```bash
export PATH="/path/to/julia/bin:$PATH"
source ~/.zshrc  # or source ~/.bash_profile depending on your shell
```
Using Homebrew

```bash
brew install julia
```

- After installation, verify by running:

```bash
julia --version
```

---------------

### Linux

To install Julia on Linux, follow these steps. Instructions are provided for two flavors: Ubuntu/Debian and Fedora.

#### Ubuntu/Debian

1. **Download the Julia Tarball**:
   - Visit the [official Julia website](https://julialang.org/downloads/) and download the tarball for Linux.

2. **Extract the Tarball**:
   - Open a terminal and navigate to the directory where you downloaded the tarball.
   - Extract the tarball to a directory of your choice. For example, to extract it to the `/opt` directory, run:
     ```bash
     sudo tar -xvzf julia-1.10.4-linux-x86_64.tar.gz -C /opt
     ```

3. **Add Julia to the System PATH**:
   - Open the Terminal app and add the following line to the `.bashrc` file in your home directory:
     ```bash
     export PATH="/opt/julia-1.10.4/bin:$PATH"
     ```
   - Save the file and reload the terminal configuration by running:
     ```bash
     source ~/.bashrc
     ```

4. **Verify the Installation**:
   - Open a new terminal window.
   - Type `julia --version` and press Enter.
   - This should display the version of Julia that is installed.

#### Fedora

1. **Download the Julia Tarball**:
   - Visit the [official Julia website](https://julialang.org/downloads/) and download the tarball for Linux.

2. **Extract the Tarball**:
   - Open a terminal and navigate to the directory where you downloaded the tarball.
   - Extract the tarball to a directory of your choice. For example, to extract it to the `/opt` directory, run:
     ```bash
     sudo tar -xvzf julia-1.10.4-linux-x86_64.tar.gz -C /opt
     ```

3. **Add Julia to the System PATH**:
   - Open the Terminal app and add the following line to the `.bash_profile` file in your home directory:
     ```bash
     export PATH="/opt/julia-1.6.3/bin:$PATH"
     ```
   - Save the file and reload the terminal configuration by running:
     ```bash
     source ~/.bash_profile
     ```

4. **Verify the Installation**:
   - Open a new terminal window.
   - Type `julia --version` and press Enter.
   - This should display the version of Julia that is installed.

### Setting up a Code Editor or IDE

There are several code editors and Integrated Development Environments (IDEs) that provide robust support for Julia. Popular options include:

- **Visual Studio Code** with the Julia extension
- **Juno**, a Julia-specific IDE

#### Setting up Visual Studio Code with the Julia Extension

Visual Studio Code (VS Code) is a versatile code editor that can be enhanced with extensions to support various programming languages, including Julia. To set up Visual Studio Code with the Julia extension, follow these steps:

1. **Install Visual Studio Code**:
   - Download and install Visual Studio Code from the [official website](https://code.visualstudio.com/).

2. **Install the Julia Extension**:
   - Open Visual Studio Code.
   - Go to the Extensions view by clicking on the Extensions icon in the Activity Bar on the left or by pressing `Ctrl+Shift+X`.
   - Search for "Julia" in the Extensions view and install the Julia extension provided by the Julia Language team.

3. **Activate the Julia Extension**:
   - Open a Julia file with the `.jl` extension in Visual Studio Code. The Julia extension should automatically activate, providing features such as syntax highlighting, IntelliSense, and integrated REPL support.

#### Setting up Juno

Juno is an Integrated Development Environment (IDE) specifically designed for Julia, providing a seamless experience for Julia programmers. To set up Juno, follow these steps:

1. **Install Juno**:
   - Download and install Juno from the [official website](https://junolab.org/).

2. **Configure Juno**:
   - Once Juno is installed, open it and navigate to the "Packages" tab.
   - Search for and install the desired packages by clicking on the "Add" button. Essential packages typically include those for code completion, debugging, and plotting.

By setting up one of these editors or IDEs, you will have a powerful environment for writing, running, and debugging Julia code. Each option provides unique features tailored to different workflows, allowing you to choose the one that best fits your development style.



-----------------------------------------------------------------------------------------

## IJulia for JupyterLab

To use Julia within JupyterLab, you need to set up the IJulia package, which provides the Jupyter kernel for Julia. This section will guide you through the installation process.

### Prerequisites
Ensure you have Python installed on your system, as it is necessary for running JupyterLab. If you do not have Python installed, you can download and install it from the official Python website.

#### Step-by-Step Installation

1. **Install JupyterLab:**

If you don't already have JupyterLab installed, you can install it using pip, Python's package manager. Open a terminal or command prompt and run:

```bash
pip install jupyterlab
```

The pip install jupyterlab command installs JupyterLab, a web-based interactive development environment for Jupyter notebooks, code, and data. This step ensures you have the necessary IDE to run and manage your Jupyter notebooks.

2. **Install Julia**: Download and install Julia from the official Julia website if you haven't already did, refer For more details on how to install Julia, refer [to the Installing Julia section](#installing-julia).
3. Install the IJulia Package: 
	- Open the Julia REPL by typing `julia` in your terminal or command prompt.
	- In the Julia REPL, add the IJulia package by running:
	```julia
	using Pkg
	Pkg.add("IJulia")
	```

The Pkg.add("IJulia") command installs the IJulia package, which provides the Jupyter kernel for Julia. This package integrates Julia with Jupyter, allowing you to run Julia code in Jupyter notebooks.

4. Register the Julia Kernel with JupyterLab:
	- After installing the IJulia package, you need to register the Julia kernel with JupyterLab. In the Julia REPL, run:
	```julia
	using IJulia
	IJulia.installkernel("Julia")
	```
The `IJulia.installkernel("Julia")` command registers the Julia kernel with JupyterLab. This step is crucial as it makes the Julia kernel available in JupyterLab, enabling you to create and run Julia notebooks.

## Launching JupyterLab
Once you have installed and registered the Julia kernel, you can launch JupyterLab:

- Start JupyterLab: Open a terminal or command prompt and run:

```bash
jupyter lab
```

- Create a New Julia Notebook: In the JupyterLab interface, click on the "Julia" icon in the launcher to create a new notebook with a Julia kernel.


## Updating Packages

To keep your Julia packages up to date, you can use:

```julia
Pkg.update()
```


