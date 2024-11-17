-- VARIABLES IN ASMX

-- **Variable Declaration and Data Types**
-- In ASMX, all variable data MUST be defined with a datatype.
-- Below is a list of available data types:

String a_string = "Hello, World!"         -- Represents text data.
Int a_integer = 5                         -- Represents whole numbers.
Bool a_boolean = true                     -- Represents true or false values.
Double a_decimal = 1.14159                -- Represents decimal numbers.
Char a_character = "a"                    -- Represents a single character.
List a_list = ["1", "2", "3"]             -- A collection of ordered values.
Array an_array = { "Name": "John", "Age": "24" }  -- A key-value structure.
Function a_function() = {}                -- Represents a callable block of code.

-- **Variable Modifiers**
-- Modifiers alter the behavior or scope of a variable. 
-- Below are examples of variable modifiers:

Null Int an_integer_with_no_value          -- A variable with no initial value.
NotNull Int an_intager_with_a_value = 5    -- Ensures the variable is not null.
Global Int a_global_integer = 5            -- Makes the variable accessible globally.
Local Int a_local_integer = 5              -- Limits the variable's scope locally.

-- **Null Variables**
-- A `Null` variable is uninitialized and cannot have a default value:
-- NOT allowed:
Null String name = "John"
-- Allowed:
Null String name
name = "John"                             -- Value can be assigned later.

-- **NotNull Modifier**
-- Variables are `NotNull` by default but can be explicitly defined for clarity:
NotNull Int age = 16                      -- Ensures the variable cannot be null.

-- **Null for Flexible Initialization**
-- If you're unsure of the datatype at the time of declaration, use `Null`:
Null name
-- You must specify a datatype before assigning a value:
Null name
name = String name
name = "John"                             -- Converts `Null` to `NotNull`.

-- **Global Modifier**
-- `Global` makes a variable accessible throughout the script:
Global Int age = 16
-- You can also make a variable global after declaration:
Int age = 16
Global age                                -- Converts `age` to global.

-- **Local Modifier**
-- Variables are `Local` by default but can be explicitly defined for clarity:
Local Int age = 16
-- You can also localize a variable later:
Int age = 16
Local age                                -- Converts `age` to local.

-- **Changing a Variable's Datatype**
-- In ASMX, changing a variable's datatype is allowed:
Int age = 16
age = String age
age = "John"

-- **Multiple Variable Assignment**
-- You can assign multiple variables on a single line:
Int age, String name = 16, "John"
-- NOT allowed:
Int, String, age, name = 16, "John"
Int age, name = 16, "John"

-- **Invalid Assignments**
-- Assigning incompatible values or datatypes is not allowed:
-- NOT allowed:
Int name = "John"                         -- `Int` cannot hold a string.
String age = 16                           -- `String` cannot hold a number.

-- **Combining Modifiers**
-- Modifiers can be combined to achieve specific behavior:
Global Null name                           -- `name` is global and null.
-- Assigning a value to a global null variable does not affect the original:
if name == "John" then {
    Global Null name                      -- Temporary global `name`.
}

-- Assigning a value outside the local scope does not persist:
name = String name
name = "John"

-- **Conflicting Modifiers**
-- When combining opposing modifiers, the last modifier takes precedence:
Global Local name = "John"                -- `name` becomes local.
Local Global name = "John"                -- `name` becomes global.
Null NotNull name = "John"                -- `name` becomes not null.
NotNull Null name                         -- `name` becomes null.

-- **Summary of Variable Modifiers**
-- - `Null`: Uninitialized, no default value allowed.
-- - `NotNull`: Default behavior, requires a value.
-- - `Global`: Accessible throughout the script.
-- - `Local`: Restricted to the current scope.

-- **Variable Use Cases**
-- Combining modifiers allows for flexible variable behavior:
Global Null name                          -- Define a global variable with no value.
NotNull Int age = 18                      -- Define a required variable.
Local String message = "Hello!"           -- Restrict a variable to the local scope.
