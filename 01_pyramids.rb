def half_pyramid(height)
  height.times do |i|
    puts " " * (height - i) + "#" * (i + 1)
  end
end

def full_pyramid(height)
  height.times do |i|
    puts " " * (height - i - 1) + "#" * (2 * i + 1)
  end
end

def wtf_pyramid(height)
  half_pyramid(height / 2 + 1)
  (height / 2).times do |i|
    puts " " * (i + 1) + "#" * (height - 2 * (i + 1))
  end
end

def main
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  height = gets.chomp.to_i

  if height.even?
    puts "Désolé, le nombre d'étages doit être impair."
    return
  end

  puts "Voici la pyramide :"
  wtf_pyramid(height)
end

