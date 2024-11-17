-- CONDITIONS IN ASMX

-- **Comparison Operators**
-- A comparison operator returns a Bool and requires the Bool datatype.
-- Below are the six available comparison operators:

Bool more_than = 3 > 2       -- True if the left operand is greater than the right.
Bool less_than = 2 < 3       -- True if the left operand is less than the right.
Bool equal_to = 3 == 3       -- True if both operands are equal.
Bool not_equal_to = 2 != 2   -- True if operands are not equal.
Bool equal_or_less = 2 <= 3  -- True if the left operand is less than or equal to the right.
Bool equal_or_more = 3 >= 3  -- True if the left operand is greater than or equal to the right.

-- **Condition Operators**
-- Condition operators combine or invert comparison operators. 
-- Below are the three condition operators:

Bool condition1 = 2 && 3     -- Combines two conditions using AND.
Bool condition2 = 3 || 3     -- Combines two conditions using OR.
Bool condition3 = not 4      -- Inverts a condition (NOT).

-- **AND (&&) Operator**
-- The `&&` operator checks if both conditions are true:

Bool both_true = condition1 && condition2   -- True if both conditions are true.
Bool all_true = condition1 && condition2 && condition3  -- Supports multiple conditions.

-- **OR (||) Operator**
-- The `||` operator checks if any condition is true:

Bool any_true = condition1 || condition2    -- True if at least one condition is true.
Bool many_any_true = condition1 || condition2 || condition3  -- Supports multiple conditions.

-- **NOT Operator**
-- The `not` operator inverts the value of a Bool:

Bool inverted_true = not true      -- Turns true into false, and vice versa.

-- **Inverted Conditions**
-- You can invert conditions to check mixed cases:

Bool mixed_condition = condition1 && not condition2   -- True if condition1 is true and condition2 is false.

-- **Direct Boolean Checking**
-- Booleans can be directly checked or explicitly compared:

Bool is_true = condition1       -- Defaults to true if condition1 is true.
Bool is_false1 = condition1 == false   -- Checks if condition1 is false.
Bool is_false2 = condition1 != true    -- Checks if condition1 is not true.
Bool is_false3 = not condition1        -- Another way to check if condition1 is false.

-- **IF Statements**
-- `if` statements execute a block of code when a condition is true:

Bool is_true = 3 > 2
if is_true then {
    -- This block will execute if is_true is true.
}

-- **IF-ELSE Statements**
-- `else` provides a fallback block if the condition is false:

Bool is_false = 2 > 3
if is_false then {
    -- This block will NOT execute.
} else {
    -- This block will execute.
}

-- **ELSE-IF Statements**
-- Use `else if` to check additional conditions hierarchically:

Bool condition1 = false
Bool condition2 = true
Bool condition3 = true

if condition1 then {
    -- This block will NOT execute.
} else if condition2 then {
    -- This block WILL execute because condition2 is true.
} else if condition3 then {
    -- This block will NOT execute because condition2 was true.
}

-- **FINALLY Block**
-- Use `finally` to execute code regardless of the condition's result:

Bool is_true = 6 > 1
if is_true then {
    -- This block WILL execute.
} finally {
    -- This block WILL ALWAYS execute.
}

-- **SWITCH CASE Statements**
-- Switch case statements evaluate one value against multiple cases:

#import <OS>
String user_input = OS.console.readLine()

switch(user_input) {
    case "hello" {
        -- Executes if user_input is "hello".
    }
    case "bye" {
        -- Executes if user_input is "bye".
    }
}

-- **Default Case**
-- Use `_` as a default case for unmatched values:

#import <OS>
String user_input = OS.console.readLine()

switch(user_input) {
    case "hello" {
        -- Executes if user_input is "hello".
    }
    case "bye" {
        -- Executes if user_input is "bye".
    }
    case _ {
        -- Executes if none of the above cases match.
    }
}

-- End of Conditions Documentation
