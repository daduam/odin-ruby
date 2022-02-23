def can_shift?(char)
  char.ord.between?(97, 122) || char.ord.between?(65, 90)
end

def shift(char, shift_factor)
  base = char.ord < 91 ? 65 : 97
  ((((char.ord - base) + shift_factor) % 26) + base).chr
end

def caesar_cipher(message, shift_factor)
  result = message.split("").map do |char|
    if can_shift?(char)
      shift(char, shift_factor)
    else
      char
    end
  end

  result.join("")
end
