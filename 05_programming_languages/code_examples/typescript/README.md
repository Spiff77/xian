# TypeScript Hello World Example

## Why TypeScript?

TypeScript is a statically typed superset of JavaScript that compiles to plain JavaScript. We use TypeScript for several key benefits:

- **Static Type Checking**: Catches errors at compile time rather than runtime
- **Better IDE Support**: Enhanced autocomplete, refactoring, and navigation
- **Modern JavaScript Features**: Use latest ES features even in older environments
- **Code Documentation**: Types serve as inline documentation
- **Scalability**: Easier to maintain large codebases

## What is a Transpiler?

A transpiler (also called a source-to-source compiler) converts code from one programming language to another at the same abstraction level. In TypeScript's case:

- **Input**: TypeScript code (.ts files)
- **Output**: JavaScript code (.js files)
- **Process**: Type checking + syntax transformation

Unlike traditional compilers that convert high-level code to machine code, transpilers convert between similar high-level languages.

## Getting JavaScript from TypeScript

To convert our TypeScript file to JavaScript:

1. **Install TypeScript compiler**: `npm install -g typescript`
2. **Compile the file**: `tsc hello.ts`
3. **Result**: Creates `hello.js` with equivalent JavaScript code

The TypeScript compiler removes all type annotations and converts TypeScript-specific syntax to standard JavaScript that can run in any JavaScript environment.