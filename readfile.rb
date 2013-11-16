class ReadFile
attr_accessor :file_read

  def saveFile(contacts_files, nb_element)

    file = File.new("contacts.txt", 'a+')

    if contacts_files
      ligne_br = 1
      # compte combien d'élémement
      count =  contacts_files.length

      contacts_files.each do |key, value|
        contacts_files[key].each do |t,val|

        # je rajout dans le fichier
          file.write "#{val} ,"
          if ligne_br ==  nb_element
            file.write "\n"
          end
          ligne_br +=1
        end
      end

      file.close
    end
  end

  def read(file)
    nb_contacts = 1

    file = File.new(file, "r")

    file.each do |line|
      puts "-------- Contact #{nb_contacts} --------"
      line = line.split(",")
      puts line

      nb_contacts +=1
    end
  end
end