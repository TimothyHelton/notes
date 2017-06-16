# C++ Institute Certified Associate Programmer

### <a name="toc"></a>Table of Contents

[Languages](#languages)

[Components of a C++ File](#components)

[Manipulators](#manipulators)

[Numbers](#numbers)

[Strings](#strings)


---

### <a name="languages"></a> Chapter 1: Languages
- **Language**: a tool for expressing and recording human thoughts.
- **Programming Language**: a certain set of rigid rules, much more 
inflexible than any natural language.
    - designed for machines not people
    - **lexicon**: symbols (letters, digits, punctuation marks, ...)
    - **syntax**: appropriate ways of collating the symbols
    - **semantics**: recognize the meaning of every statement expressed in 
    the given language

#### Programming Language
- programming languages
    - follow a predetermined set of know commands
        - also referred to as an **instruction list** or **IL**
        - **IL** are also referred to as **machine language**
    - programming in machine language is highly susceptible to human error
    - high-level programming languages exist to help humans write code that 
    may be transformed into machine language
    - a **compiler** takes high-level languages and turns them into machine 
    language
    
- Process
    1. **Write** source code
    1. **Compile** source code to create an executable
    1. **Link** the executables together (different libraries may have 
    different executables)
    
#### Extensions
- .cc
- .cp
- .cxx
- .c++
- .cpp
- .C

#### References
- "The C++ Programming Language", *Bjarne Stroustrup*
- ["Thinking in C++"](http://www.mindview.net/Books/TICPP/ThinkingInCPP2e.html)
- "Jumping into C++" *Alex Allain*
- "Effective C++" *Scott Meyers*
    
[Table of Contents](#toc)

---

### <a name="components"></a> Components of a C++ File
#### Comments
- each comment is lexically equivalent to one space
- **//** comments a single line
- **/\* \*/** comments out blocks of text

#### Preprocessor Directive
- Located at the top of a file.
- Begins with a **#**.

##### Include Directive
- Preprocessor will replace the directive with the content of the file whose
 name is listed in the directive.
- Include statements surrounded by < and > are system libraries **#include 
\<path>**
- Include statements surrounded by " and " are non-system libraries 
**#include "path"**

#### Namespaces
- Namespaces are containers to prevent variable conflicts.
- To allow variables to be called without inserting the namespace first add 
the line **using namespace XXX;** with the namespaces you would like to use.

#### Main Function
- Every program must have a function named **main**, which returns a 
**integer**.

#### Function Prototype
- The **result**, **name** and **arguments** of a function are called the 
**prototype**.

#### Variables
- Variables have three components:
    1. type
    1. name
    1. value
- Variable names follow these rules:
    1. only use uppercase, lowercase letters and underscores
    1. must begin with a letter
        1. underscores are letters
    1. case matters
- Declare variable by first stating the type and then the name followed by a
 semicolon.
    - int var1;
- Assign values to a variable by using a equals sign during or after the 
declaration, but not before.
- **Literal**: a symbol that uniquely identifies its value

[Table of Contents](#toc)

---

### <a name="manipulators"></a> Manipulators
- convert an output to a different type
- are active until turned off
- **dec** (default)
- **hex**
- **oct**
- **setbase(16)** must include <iomanip>
- (int)var1
    - converts var1 to an integer
- **fixed** standard decimal numbers
- **scientific** scientific notation

[Table of Contents](#toc)

---

### <a name="numbers"></a> Numbers
- **integers**: whole numbers
    - **int**
- **floating-point**: contain or are able to contain fractional parts of a 
number.
    - **float**
    - **double**
        - has double the precision of a float 
- **type**: the characteristic of a number which determines its kind, range 
and application
- adding a **+** sign at the front of a positive number is optional
- numbers beginning with a "**0**" will be treated as an **octal** value.
- numbers beginning with a "**0x**" will be treated as a **hexadecimal** value.

#### Exponential Notation
- either **E** or **e** may be used
- the exponent must be an integer

#### Converting Types
- converting from int to float
    - may lead to a loss of accuracy
- converting from float to int
    - almost always result in a loss of accuracy
    - for some cases it is not possible to convert a float to an int
        - this occurs for arbitrarily large or small numbers
        - The value assigned to the variable is unknown for these cases.
        - This is called an **implementation dependent issue**

#### Operators
- *: multiplication
- /: division
- +: addition
- -: subtraction
    - also used as the **unary** operator to change sign of a value
- %: modulo returns the remainder
    - Modulo of 0 is not possible.  This will result in a divide by 0
     error.
- ++: **increment** operator
    - can be implemented as a **postfix** or *prefix** operator
- --: **decrement** operator
    - can be implemented as a **postfix** or *prefix** operator
- Operators of larger (higher) priority perform their operations before the 
operators with lower priority.
    - **bindings** determine the order of operators with equal priority.
        - usually **left-sided binding** is used, which states the values 
        are evaluated from left to right when there is an equal priority.
- Subexpressions in parentheses are always calculated first.

#### INF
- **inf**: is an exception for infinitive and is raised by dividing by zero.

[Table of Contents](#toc)

---

### <a name="strings"></a> Strings
- All strings are treated as arrays

#### Character Type (char)
- declare a single character with the **char** type
- all characters are numbers to the computer
- **ASCII** American Standard Code for Information Interchange
    - 256 different characters
- specify a **single** character using single
    - quotes
    - enter the integer value (avoid this if possible)
- **\n**: line feed (transition to a new line)
- **\r**: carriage return (return to the beginning of the line)
- **\a**: alarm (make an audible beep sound)
- **\0**: null (character that does not represent any characters)
- **\##**: escape followed by two octal digits (0-7) is the character 
associated with that octal number
- **\x##** or **\X##**: escape followed by *one* or *two* digits returns the
 hexadecimal character associated with that hexadecimal number
- the char type is a special type of integer


[Table of Contents](#toc)
