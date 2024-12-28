// Console app.

print("Hello, World!")

let singleLineString = "These are the same"
let multilineString = """
These are the same.
"""
print("singleLineString: \(singleLineString)")
print("multilineString: ###\(multilineString)###")

let softWrappedQuotation = """
The White Rabbit put on his spectacles.  "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \\
till you come to the end; then stop."
"""
print("softWrappedQuotation:", softWrappedQuotation)


let linesWithIndentation = """
    This line doesn't begin with whitespace.
        This line begins with four spaces.
    This line doesn't begin with whitespace.
    """
print("linesWithIndentation:", linesWithIndentation)
