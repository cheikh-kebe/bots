def get_folder_name_rails

  folder_name_rails = ARGV.join("_")#fonction to know if the ARVG is given 
  if ARGV.empty?
    puts  "merci de renseigner le nom du dossier à créer"
    exit
  end  #End of the fonction
    puts system("rails new -d postgresql  #{folder_name_rails}")
end

get_folder_name_rails