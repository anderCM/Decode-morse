morse_dict = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z',
  '-----' => '0',
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '9',
  '.-.-.-' => '.',
  '--..--' => ',',
  '..--..' => '?'
}

define_method :decode_char do |character|
  morse_dict[character]
end

define_method :decode_word do |word|
  characters = word.split
  characters.each do |character|
    print decode_char(character)
  end
end

define_method :decode do |code|
  words = code.split('   ')
  words.each do |word|
    decode_word(word)
    print ' '
  end
end
decode('-- -.--   -. .- -- .')
