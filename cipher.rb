# Creating a function taking text and shift
def cipher(text, shift)
    # Creating lowercase array
    lowercase_letters = ('a'..'z').to_a

    # Creating uppercase array
    uppercase_letters = ('A'..'Z').to_a

    # Initializing empty string to store result
    result = ""

    # Iterate through each character in the input text
    text.each_char do |char|
        # Check if the character is a lowercase letter
        if lowercase_letters.include?(char)
            # Find the index of the character in the lowercase_letters array
            index = lowercase_letters.index(char)
            # Shift index by specified amount
            new_index = (index + shift) % 26
            # Append the shifted letter to the result string
            result += lowercase_letters[new_index]
        elsif uppercase_letters.include?(char)
            # Fund the index of the character in the uppercase_letters array
            index = uppercase_letters.index(char)
            # Shift the index by the specified amount
            new_index = (index + shift) % 26
            # Append the shifted letter to the result string
            result += uppercase_letters[new_index]
        else
            # If the character is not a letter, append it to the result string as is
            result += char
        end
    end

    # Return final result
    result
end

# Ask user text input
print "Enter the text to cipher: "
user_text = gets.chomp

# Ask user for shift value
print "Enter the shift value: "
user_shift = gets.chomp.to_i

# Call cipher method with user inputs
ciphered_text = cipher(user_text, user_shift)

# Print the original and ciphered text
puts " Original text: #{user_text}"
puts "Ciphered text: #{ciphered_text}"