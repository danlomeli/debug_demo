# Preprocessor Test Project

## Purpose

This project demonstrates how to pass build parameters from GNU Make to CMake and then to the C++ compiler. Specifically, it shows how to define a preprocessor macro (`DEBUG`) in a Makefile, pass it through CMake, and finally use it in a C++ program.

## Project Structure

The project consists of three main files:

1. `test.cpp`: A simple C++ program that checks if the `DEBUG` macro is defined.
2. `CMakeLists.txt`: The CMake configuration file that sets up the project and handles the `DEBUG` macro.
3. `Makefile`: Orchestrates the build process, including passing the `DEBUG` parameter to CMake.

## How It Works

- The Makefile defines separate targets for debug and release builds.
- For the debug build, it passes `-DDEBUG=ON` to CMake.
- CMake checks for the `DEBUG` definition and, if present, passes it to the C++ compiler.
- The C++ program uses `#ifdef DEBUG` to check if the macro is defined and prints different messages accordingly.

## Usage

To use this project:

1. Ensure you have GNU Make, CMake (version 3.10 or later), and a C++ compiler installed.
2. Place all files (`test.cpp`, `CMakeLists.txt`, and `Makefile`) in the same directory.
3. Run the following commands:

   ```
   make        # Builds both debug and release versions and runs them
   make debug  # Builds only the debug version
   make release # Builds only the release version
   make run    # Builds both versions and runs them
   make clean  # Cleans up build directories
   ```

## Expected Output

When running `make` or `make run`, you should see output similar to this:

```
Running debug build:
DEBUG is defined. Test passed.

Running release build:
DEBUG is not defined. Test failed.
```

This demonstrates that the `DEBUG` macro is successfully passed from Make to CMake to the C++ compiler in the debug build, but not in the release build.

## Modifying the Project

You can use this project as a template for more complex scenarios where you need to pass different build parameters or preprocessor definitions from your build system to your C++ code.

Feel free to modify the `test.cpp` file to test different preprocessor conditions or add more complexity to the build process by editing the `CMakeLists.txt` and `Makefile`.