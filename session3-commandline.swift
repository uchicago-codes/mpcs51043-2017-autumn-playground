
print("Hello, world!")

// There is always one argument passed, which is the name of the program,
// that is the file name.
if CommandLine.argc < 2 {
    print("No arguments are passed.")
    let firstArgument = CommandLine.arguments[0]
    print(firstArgument)
} else {
    print("Arguments are passed.")
    let arguments = CommandLine.arguments
    for argument in arguments {
        print(argument)
    }
}
