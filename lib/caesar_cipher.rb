def caesar_cipher(str, shift)
  chars = str.split("")
  chars.map! do |char|
    if char.match(/[a-zA-Z]/)
      code = char.ord + shift
      if char.match(/[A-Z]/) && code > "Z".ord || char.match(/[a-z]/) && code > "z".ord
        code -= 26
      end
      code.chr
    else
      char
    end
  end
  chars.join("")
end

puts caesar_cipher("What a string!", 5)
# => "Bmfy f xywnsl!"
