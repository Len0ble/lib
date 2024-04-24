def say_hello
  puts "Bonjour!"
end
# Appel de la methode
say_hello
def say_hello(first_name)
  puts "Bonjour, #{first_name} !"
end

# Appel de la méthode
say_hello("Mbacke")

def ask_first_name
  puts "Quel est votre prénom ?"
  gets.chomp
end


