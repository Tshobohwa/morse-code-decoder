def decode_char(morse)
    character = ""
    case morse
    when ".-"
         character = "A"
    when "-..."
        character = "B"
    when "-.-."
        character = "C"
    when "-.."
        character = "D"
    when "."
        character = 'E'
    when "..-."
        character = "F"
    when "--."
        character = "G"
    when "...."
        character = 'H'
    when ".."
        character = "I"
    when ".---"
        character = "J"
    when "-.-"
        character = "K"
    when ".-.."
        character = "L"
    when "--"
        character = "M"
    when "-."
        character = "N"
    when "---"
        character = "O"
    when ".--."
        character = "P"
    when "--.-"
        character = "Q"
    when ".-."
         character = "R"
    when "..."
         character = "S"
    when "-"
         character = "T"
    when "..-"
         character = "U"
    when "...-"
         character = "V"
    when ".--"
         character = "W"
    when '-..-'
         character = 'X'
    when "-.--"
         character = "Y"
    when "--.."
         character = "Z"
    else
        character = ""
    end
    return character
end


def decode_word(word)
    decoded_word = ""
    morse_characters = word.split(" ");
    morse_characters.each do |morse_character|
        decoded_word += decode_char(morse_character)
    end
    return decoded_word
end


def decode(setence)
    decoded_words =""
    words = setence.split("   ")
    words.each do |word|
       decoded_words += decode_word(word) + " "
    end
    return decoded_words
end

puts decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")