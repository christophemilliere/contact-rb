require_relative 'readfile'

class Contact < ReadFile
  def initialize
    puts " Bienvenue dans votre carnet d'adresse"
    puts
    puts " Veuillez choisir entre 1 et 4"
    puts
    puts " 1 - Ajouter un contact"
    puts " 2 - Lire un contact"
    puts " 3 - Mise à ajour d' un contact"
    puts " 4 - Supprimer un contact"
    number = gets.chomp

    case number.to_i
    when 1
      addContact
    when 2
      readContact
    when 3
      updateContact
    when 4
      deleteContact
    else
      puts " Veuillez redémarrer le programme une erreur est survenu"
      puts " Veuillez utiliser des chiffres de 1 à 4 merci."
    end

  end

  def addContact
    add = false
    contacts = {}
    count = 0

    puts "--- Ajouter un  contact ---"
    puts

    while (not add)

      puts "Votre nom"
      @name = gets.chomp

      puts "Votre Prénom"
      @first_name = gets.chomp

      puts "Votre Adresse"
      @adress = gets.chomp

      puts "Votre Code Postal"
      @cp = gets.chomp

      puts "Votre Ville"
      @ville = gets.chomp

      puts "Votre Email"
      @email = gets.chomp

      puts
      #save hash
      contacts[count] = {
        :name => @name.capitalize,
        :first_name => @first_name.capitalize,
        :adress => @adress,
        :cp => @cp,
        :ville => @ville,
        :email => @email
      }

      # contacts.merge!({ count =>
      #   {
      #     :name => @name,
      #     :first_name => @first_name,
      #     :adress => @adress,
      #     :email => @email
      #   }
      # })

      # puts " array =>" +contacts.inspect
      puts " Voulez vous ajouter un autre contact ?"
      other = gets.chomp
      if other.downcase == "non"
        add = true
        save_file = ReadFile.new
        saveFile(contacts, 6)
      else
        count += 1
      end
    end


  end

  def readContact
    puts "Lire un contact"
    read = ReadFile.new
    read.read("contacts.txt")
  end

  def updateContact
    puts "Mise à jour d' un contact"
  end

  def deleteContact
    puts "Supprimer un contact"
  end

  private 
  def checkString?(check)

  end

end
