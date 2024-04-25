# lib/02_password.rb

# Définition de la classe PasswordManager
class PasswordManager
    def initialize
      @password = nil
    end
  
    # Méthode pour l'inscription
    def signup
      puts "Définissez votre mot de passe :"
      @password = gets.chomp
      puts "Mot de passe enregistré avec succès !"
    end
  
    # Méthode pour la connexion
    def login
      puts "Entrez votre mot de passe :"
      input_password = gets.chomp
      until input_password == @password
        puts "Mot de passe incorrect. Réessayez :"
        input_password = gets.chomp
      end
      puts "Connexion réussie ! Bienvenue dans votre espace secret."
    end
  
    # Méthode pour l'écran d'accueil
    def welcome_screen
      puts "Bienvenue dans votre zone secrète."
      puts "Voici quelques secrets de la NSA :"
      puts "- Contenu des textos et messages WhatsApp d'un membre du groupe : [Secret]."
    end
  
    # Méthode pour exécuter les différentes parties du programme
    def perform
      signup
      login
      welcome_screen
    end
  end
  
  # Appel de la méthode perform pour démarrer le programme
  password_manager = PasswordManager.new
  password_manager.perform
  