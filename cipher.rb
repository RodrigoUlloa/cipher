def caesar_cipher(string, shift)
  shifted_string = string.chars.map do |char|
    if char.match?(/[A-Za-z]/)
      base = char.ord < 91 ? 'A'.ord : 'a'.ord
      (((char.ord - base + shift) % 26) + base).chr
    else
      char
    end
  end
  shifted_string.join
end

# Example usage:
puts caesar_cipher("What a string!", 5)
# => "Bmfy f xywnsl!"