# C Programming Examples

This directory contains basic C programming examples.

## Platform Dependency

Unlike Java, which runs on the Java Virtual Machine (JVM) and provides "write once, run anywhere" capability, C is platform dependent. C programs must be compiled for specific target platforms and architectures. The compiled binary will only run on the platform it was compiled for (e.g., a program compiled on macOS won't run on Windows or Linux without recompilation).

## Files

- `hello_world.c` - A simple "Hello, World!" program

## Compilation and Execution

To compile and run the C program:

```bash
gcc hello_world.c -o hello_world
./hello_world
```

## Output

```
Hello, World!
```