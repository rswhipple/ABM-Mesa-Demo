# Python Basics Tutorial

## 1. Indentation
In Python, indentation is used to define the blocks of code. It's typically done using 4 spaces.
Indentation is crucial because it indicates the grouping of statements.

### Correct Indentation
```python
def example_function():
    for i in range(5):
        print(i)  # This line is indented to indicate it's inside the for loop

example_function()
```

### Incorrect Indentation
```python
# def example_function():
# for i in range(5):
# print(i)  # This will raise an IndentationError
```

## 2. Variables and Data Types
Variables in Python are used to store data that can be used later in the program.
Variables are created when you assign a value to them using the equals sign (=).

### Variable Assignment
```python
x = 10  # Integer
y = "Hello, World!"  # String
z = 3.14  # Float
is_python_fun = True  # Boolean
fruits = ["apple", "banana", "cherry"]  # List
person = {"name": "Alice", "age": 25}  # Dictionary
numbers = (1, 2, 3)  # Tuple
unique_numbers = {1, 2, 3}  # Set
```

### Printing Variables
```python
print(x)
print(y)
print(z)
print(is_python_fun)
print(fruits)
print(person)
print(numbers)
print(unique_numbers)
```

### Data Types
Python has several built-in data types, some of which are shown above:
`int`, `str`, `float`, `bool`, `list`, `dict`, `tuple`, `set`

You can check the type of a variable using the `type()` function:
```python
print(type(x))  # <class 'int'>
print(type(y))  # <class 'str'>
print(type(z))  # <class 'float'>
print(type(is_python_fun))  # <class 'bool'>
print(type(fruits))  # <class 'list'>
print(type(person))  # <class 'dict'>
print(type(numbers))  # <class 'tuple'>
print(type(unique_numbers))  # <class 'set'>
```

## 3. Loops
Loops are used to execute a block of code repeatedly.

### For Loop
Iterates over a sequence (such as a list, tuple, dictionary, set, or string):
```python
for fruit in fruits:
    print(fruit)
```

### While Loop
Repeats as long as a certain condition is true:
```python
count = 0
while count < 5:
    print(count)
    count += 1  # This is equivalent to count = count + 1
```

## 4. Modular Code
Modular code is a way of organizing code into separate, reusable pieces called modules.
In Python, a module is a file containing Python definitions and statements.

Let's create a simple module.

### Save this code in a file named my_module.py
```python
def greet(name):
    return f"Hello, {name}!"

if __name__ == "__main__":
    # Test the greet function
    print(greet("Test User"))
```

### Now, we can import and use this module in another script.
Assuming my_module.py is in the same directory as this script.
```python
import my_module

# Using the function from the module
message = my_module.greet("Alice")
print(message)

# You can also import specific functions or variables from a module
from my_module import greet

message = greet("Bob")
print(message)
```

### Using `if __name__ == "__main__":` to make code only run when the file is executed directly
```python
if __name__ == "__main__":
    print("This code runs when the script is executed directly.")
    print("It will not run when the script is imported as a module.")
```


## 5. Best Practices for Data Science in Python

### 1. Use Virtual Environments
Virtual environments help manage dependencies and avoid conflicts between packages.
```python
# Create a virtual environment
python -m venv myenv

# Activate the virtual environment
# On Windows
myenv\Scripts\activate
# On macOS/Linux
source myenv/bin/activate
```

### 2. Follow the PEP 8 Style Guide
Adhering to the PEP 8 style guide makes your code more readable and consistent.
- Use 4 spaces per indentation level.
- Keep lines under 79 characters.
- Use meaningful variable names.

### 3. Document Your Code
Use docstrings to explain the purpose of functions and modules.
```python
def add(a, b):
    """
    Add two numbers and return the result.

    Parameters:
    a (int): The first number.
    b (int): The second number.

    Returns:
    int: The sum of the two numbers.
    """
    return a + b
```

### 4. Use Version Control
Track changes in your code with Git. This allows you to collaborate with others and revert to previous versions if needed.
```sh
# Initialize a git repository
git init

# Stage and commit changes
git add .
git commit -m "Initial commit"
```

### 5. Write Modular Code
Break your code into functions and modules to improve readability and reusability.
```python
# my_module.py
def preprocess_data(data):
    # Preprocess the data
    return processed_data
```

### 6. Use Notebooks for Exploration, Scripts for Automation
Jupyter Notebooks are great for exploratory data analysis and visualization. For repeatable tasks, use Python scripts.
```python
# analysis.ipynb
# Use Jupyter Notebook for exploration

# process_data.py
# Use scripts for automation
def main():
    data = load_data("data.csv")
    processed_data = preprocess_data(data)
    save_data(processed_data, "processed_data.csv")

if __name__ == "__main__":
    main()
```

### 7. Handle Exceptions
Use try-except blocks to handle potential errors gracefully.
```python
try:
    data = load_data("data.csv")
except FileNotFoundError:
    print("The file was not found.")
```

### 8. Validate Data
Always validate the integrity and quality of your data before analysis.
```python
def validate_data(data):
    if data.isnull().sum().sum() > 0:
        raise ValueError("Data contains missing values.")
    return True
```

### 9. Use Efficient Data Structures
Use pandas DataFrames for handling tabular data and numpy arrays for numerical computations.
```python
import pandas as pd
import numpy as np

data = pd.read_csv("data.csv")
array = np.array([1, 2, 3])
```

### 10. Optimize Performance
Use vectorized operations in pandas and numpy to improve performance.
```python
# Vectorized operation in pandas
data['new_column'] = data['column1'] + data['column2']

# Vectorized operation in numpy
result = np.add(array1, array2)
```

### 11. Keep Your Workspace Clean
Remove temporary files and variables that are no longer needed to keep your workspace clean and organized.
```python
# Clear variables
del temp_variable

# Remove temporary files
import os
os.remove("temp_file.csv")
```

### 12. Collaborate and Share
Share your code and results with others. Use tools like GitHub for version control and collaboration.
```sh
# Push changes to GitHub
git remote add origin <repository_url>
git push -u origin master
```

## 6. Version Control

Track changes in your code with Git. This allows you to collaborate with others and revert to previous versions if needed.

### Setting Up Git
Clone a remote git repository in your local project directory:
```sh
# Initialize a git repository
git clone <SSH-key-or-HTTP-address>

# Stage and commit changes
git add .
git commit -m "Initial commit"
```

### Using Feature Branches
Feature branches allow you to develop new features in isolation from the main codebase. This makes it easier to manage changes and collaborate with others.

1. **Create a New Branch**
   Create a new branch for your feature:
   ```sh
   git checkout -b feature-branch-name
   ```

2. **Work on the Feature**
   Make changes to your code on the feature branch. Stage and commit your changes:
   ```sh
   git add .
   git commit -m "Implemented feature XYZ"
   ```

3. **Sync with Remote Repository**
   Push your feature branch to the remote repository:
   ```sh
   git push -u origin feature-branch-name
   ```

4. **Collaborate with Others**
   Share the branch with your team. Other team members can check out the branch and contribute:
   ```sh
   git checkout feature-branch-name
   git pull origin feature-branch-name
   ```

5. **Merge Feature Branch into Main Branch**
   Once the feature is complete and tested, merge it back into the main branch:
   ```sh
   # Switch to the main branch
   git checkout main

   # Merge the feature branch
   git merge feature-branch-name
   ```

6. **Resolve Conflicts**
   If there are any conflicts, resolve them and commit the changes:
   ```sh
   # Edit conflicted files
   git add .
   git commit -m "Resolved merge conflicts"
   ```

7. **Delete the Feature Branch**
   After merging, you can delete the feature branch:
   ```sh
   git branch -d feature-branch-name

   # Delete the branch on the remote repository
   git push origin --delete feature-branch-name
   ```

#### Best Practices for Using Git
- **Commit Often**: Make frequent, small commits with clear messages describing your changes.
- **Use Meaningful Branch Names**: Name your branches clearly to indicate their purpose (e.g., `feature-login`, `bugfix-issue123`).
- **Review Code**: Use pull requests or merge requests to review code before merging it into the main branch.
- **Keep Branches Up to Date**: Regularly merge changes from the main branch into your feature branch to avoid large merge conflicts.
- **Document Changes**: Maintain clear commit messages and documentation to explain the changes and reasons behind them.

## 7. Comments & Documentation in Python

Comments are an essential part of writing clean, readable, and maintainable code. They are used to explain what the code does, why certain decisions were made, and provide context for future developers (or your future self).

### 1. Single-Line Comments
Single-line comments start with the `#` symbol. Everything after `#` on that line is ignored by the Python interpreter.

#### Example
```python
# This is a single-line comment
x = 10  # This comment explains that x is assigned the value 10
```

### 2. Multi-Line Comments
Python does not have a specific syntax for multi-line comments like some other languages. However, you can use multiple single-line comments or a multi-line string (triple quotes) that is not assigned to any variable.

#### Example
```python
# This is a multi-line comment
# that spans multiple lines
# using single-line comment syntax.

"""
This is another way to write multi-line comments.
You can use triple quotes, but this is technically a multi-line string
that is not assigned to a variable.
"""
```

### 3. Docstrings
Docstrings (documentation strings) are a special kind of comment used to document modules, classes, methods, and functions. They are written using triple quotes (single `'''` or double `"""`) and appear right after the definition of a function, method, class, or module.

#### Example
```python
def add(a, b):
    """
    Add two numbers and return the result.

    Parameters:
    a (int): The first number.
    b (int): The second number.

    Returns:
    int: The sum of the two numbers.
    """
    return a + b

class MyClass:
    """
    This is a simple example class.

    Attributes:
    attribute1 (str): Description of attribute1.
    attribute2 (int): Description of attribute2.
    """
    def __init__(self, attribute1, attribute2):
        """
        The constructor for MyClass.

        Parameters:
        attribute1 (str): Description of attribute1.
        attribute2 (int): Description of attribute2.
        """
        self.attribute1 = attribute1
        self.attribute2 = attribute2

    def method_example(self):
        """
        An example method that does something.

        Returns:
        str: A string indicating what the method does.
        """
        return f"This method does something with {self.attribute1} and {self.attribute2}."
```

### 4. Best Practices for Writing Comments
- **Be Clear and Concise**: Write comments that are easy to understand and get straight to the point.
- **Explain Why, Not Just What**: Focus on explaining why the code is written a certain way, not just what it does.
- **Keep Comments Up to Date**: Ensure that comments are updated when the code changes. Outdated comments can be more confusing than no comments.
- **Use Docstrings for Documentation**: Use docstrings to document functions, methods, classes, and modules. This helps in generating documentation automatically.
- **Avoid Redundant Comments**: Do not write comments that merely restate what the code is doing. Comments should provide additional context or explanations.

#### Example
```python
# Bad Comment: This comment is redundant
x = x + 1  # Increment x by 1

# Good Comment: This comment explains why
x = x + 1  # Increment x to ensure the loop condition is met
```
