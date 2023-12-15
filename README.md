# cipher-ruby
Creating a Caesar's cipher using Ruby language

## Tasks
- You will need to remember how to convert a string into a number.
- Don’t forget to wrap from z to a.
- Don’t forget to keep the same case.

## Methods
- `.gets`: Reads line from the input
- `.chomp`: Removes the trailing newline character
- `.to_i` : Conversion to integer
- `.each_char`: Iterate each character and pass it
- `.include?`: Checks whether a particular element is present in the collection or object. 

## Steps 
1. Define `cipher` method taking two parameters(`text`, `shift`).
2. Create two arrays `lowercase_letters` and `uppercase letters`.
3. Initialize empty string, `result`, to store final ciphered text.
4. Iterate through each character in the input string (`text`) using `text.each_char`.
5. Inside loop, check if current character is lowercase with `lowercase_letters.include?(char)`.
6. If the character is a lowercase letter, find its index in the `lowercase_letters` array, shift the index by the specified amount (`shift`), and append the shifted letter to the result string
7. If the character is not a lowercase letter, check if it is an uppercase letter using `uppercase_letters.include?(char)`.
8. Same step as 6 but for `uppercase_letters`
9. If the character is neither a lowercase nor an uppercase letter, append it to the `result` string as is.
10. Loop continues until all characters in the input string are processed.
11. Return final ciphered text in the `result` string
12. Ask user input and store in `user_text`
13. Ask user for shift value and store in `user_shift`
14. Call `cipher` method with user values and storing in `ciphered_text`
15. Prints original and ciphered text.