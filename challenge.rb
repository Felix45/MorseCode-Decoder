def decode_char(char)
  chars = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
  }
  chars[char]
end

def decode_word(morse_word)
  actual_word = ''

  morse_word.split.each do |letter|
    char = decode_char(letter)
    actual_word += char
  end
  actual_word
end

def decode(morse_sentence)
  words = []

  morse_sentence.split('   ').each do |word|
    words.push(decode_word(word))
  end
  words.join(' ')
end

print decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
