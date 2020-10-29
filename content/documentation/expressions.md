+++
title = "Expression parameters"
description = "Explains the expression parameter type language that is often used for filtering or generating numbers."
weight = 25
type="page"
creatordisplayname = "Ruman Gerst"
creatoremail = "ruman.gerst@leibniz-hki.de"
lastmodifierdisplayname = "Ruman Gerst"
lastmodifieremail = "ruman.gerst@leibniz-hki.de"
+++

When using nodes that filter or generate data, you might encounter a parameter type called "Expression".
This parameter allows to to write simple to complex functions that can test for one or multiple conditions or
act as input for a generator node.
The basic concept of this expression language is to mix string, boolean, and numeric operations into one simple but powerful language.
It allows you for example to first calculate a numeric metric and use it for filtering objects within one line.

There are always four components you will interact with:

1. Literals like numbers (`0.5`), strings (`"hello world"`), and boolean values (`TRUE`, `FALSE`)
2. Variables that are supplied from the node itself like `x`, `y`, or `Area`
3. Functions that process literals or variables like `MIN(x, 5)`, `STRING_EQUALS("abc", "abc")`. Parameters are separated by commas.
5. Operators that do something with the literals, variables, or function results, like subtraction, concatentation, or conditions

The expression language is interpreted as **one line** and you cannot write own variables. The result of the one expression is supplied to the node for processing.

![](/img/documentation/expressions_filter.png)

![](/img/documentation/expressions_function.png)

The user interface of the expression parameter contains four items:

1. The editor. Here you can type mathematical or conditional logic formulas
2. (Optional) A button that opens a list of all available **variables** that you can use within the expression
3. A button that opens a list of all available **operators**
4. A button that opens a list of all available **functions**


## Variables

Variables are set externally by the node and can contain various useful values.
For example, filter nodes will put numbers into the variables. Image generator nodes
might put the pixel coordinates into them.

**Example**
Here the node supplies the variables `x` and `y` and expects a number back. You can input a formula that will be
automatically applied to ally `x` and `y` values:
```
(x + y) + x/y + 1
```

## Operators

The expressions understand a wide range of common operators for numeric, string, and boolean data:

* You can add, subtract, divide, ... numbers
* Strings can be concatenated or checked for if one string contains another
* All basic boolean operators are available

**Example**
You can combine various operators to do complex filtering. Here the node supplies variables `Area` and `MaxWidth`:
```
(Area > 1000) AND ((MaxWidth^2 / Area > 0.5))
```

## Functions

The expression language comes with a large library of predefined functions that you can use for more complex tasks:

**Example**
To find files, it can be useful to utilize a Glob-filter that can reliably test for the file extension. Here `name` is the file name and supplied by the node.
```
STRING_MATCHES_GLOB(name, "*.tif") AND ("data" IN name)
```

# Operators

## Precedence

The operators are ordered according to a precedence table. You might need to use brackets (`()`) to force the order you expect:

The higher the number is the more the operator is preferred.

| 1   | 2   | 3   | 4   | 5                              | 6                        | 7                | 8   | 9           | 10          |
| --- | --- | --- | --- | ------------------------------ | ------------------------ | ---------------- | --- | ----------- | ----------- |
| OR  | AND | NOT |     |                                |                          |                  |     |             |             |
|     | XOR |     |     |                                |                          |                  |     |             |             |
|     |     |     |     |                                | Subtraction (x - y)      | Divide (x / y)   |     | Power (x^y) | Negate (-x) |
|     |     |     |     |                                |                          | Modulo (x % y)   |     |             |             |
|     |     |     |     |                                |                          | Multiply (x * y) |     |             |             |
|     |     |     |     | Greater than or equal (x >= y) |                          |                  |     |             |             |
|     |     |     |     | Greater than (x > y)           |                          |                  |     |             |             |
|     |     |     |     | Less than or equal (x <= y)    |                          |                  |     |             |             |
|     |     |     |     | Less than (x < y)              |                          |                  |     |             |             |
|     |     |     |     | Equal (x == y)                 |                          |                  |     |             |             |
|     |     |     |     | Unequal (x != y)               |                          |                  |     |             |             |
|     |     |     |     |                                | String contains (x IN y) |                  |     |             |             |
|     |     |     |     |                                | Addition (x + y)         |                  |     |             |             |


## Compatible types

Not all operators are compatible to all types. See following table for the operator's behavior:

| Operator                       | Number | Boolean              | String                                           |
| ------------------------------ | ------ | -------------------- | ------------------------------------------------ |
| AND                            | Error  | OK                   | Error                                            |
| NOT                            | Error  | OK                   | Error                                            |
| OR                             | Error  | OK                   | Error                                            |
| XOR                            | Error  | OK                   | Error                                            |
| Divide (x / y)                 | OK     | OK (TRUE=1, FALSE=0) | Works (If can be converted to number)            |
| Multiply (x * y)               | OK     | OK (TRUE=1, FALSE=0) | Works (If can be converted to number)            |
| Modulo (x % y)                 | OK     | OK (TRUE=1, FALSE=0) | Works (If can be converted to number)            |
| Subtract (x - y)               | OK     | OK (TRUE=1, FALSE=0) | Works (If can be converted to number)            |
| Addition (x + y)               | OK     | OK (TRUE=1, FALSE=0) | OK (Conversion to strings, string concatenation) |
| Equality (x == y)              | OK     | OK                   | OK (If types differ, conversion to strings)      |
| Inequality (x != y)            | OK     | OK                   | OK                                               |
| String contains (x IN y)       | Error  | Error                | OK                                               |
| Less than (x < y)              | OK     | OK (TRUE=1, FALSE=0) | Error                                            |
| Less than or equal (x <= y)    | OK     | OK (TRUE=1, FALSE=0) | Error                                            |
| Greater than (x > y)           | OK     | OK (TRUE=1, FALSE=0) | Error                                            |
| Greater than or equal (x >= y) | OK     | OK (TRUE=1, FALSE=0) | Error                                            |
