def get_folder_name

 folder_name = ARGV.join("_")#fonction to know if the ARVG is given 
 if ARGV.empty?
  puts  "merci de renseigner le nom du dossier à créer"
  exit
 end  #End of the fonction
  Dir.mkdir("/home/cheikh/HP/#{folder_name}")#fonction Dir.mkdir permet de créer un dossier en definissant un chemin
  
  app = File.open("/home/cheikh/HP/#{folder_name}/app.rb", "a")
  puts "require 'bundler'"
  puts "Bundler.require"
  puts "require 'pry'"
  app.close

  read = File.open("/home/cheikh/HP/#{folder_name}/README.md", "a")#creation du fichier README.md
  read.puts "read me vièrge"
  read.close

  gemfile = File.open("/home/cheikh/HP/#{folder_name}/Gemfile", "a")#create a Gemfile in the current folder
  gemfile.puts"source 'https://rubygems.org'"

  gemfile.puts"ruby '2.7.1'"
  gemfile.puts"gem 'rubocop'"
  gemfile.puts"gem 'dotenv'"        #==> write all the gems in the Gemfile
  gemfile.puts"gem 'pry'"
  gemfile.puts"gem 'rspec'"
  gemfile.close

  gitignore= File.open("/home/cheikh/HP/#{folder_name}/.gitignore", "a")#create a file in the current folder
  gitignore.puts ".env"
  read.close

  env = File.open("/home/cheikh/HP/#{folder_name}/.env", "a")#create a file in the current folder
  env.close

  Dir.chdir("/home/cheikh/HP/#{folder_name}")#change l'emplacement du dossier 
  puts system("git init")
  puts system("rspec --init")     #launch all the init and install all gems needed
  puts system("bundle install")
  
  Dir.mkdir("/home/cheikh/HP/#{folder_name}/lib")#create a new folder lib

  Dir.mkdir("/home/cheikh/HP/#{folder_name}/db")#create a new folder database 

  Dir.chdir("/home/cheikh/HP/#{folder_name}/lib")#change directory 
  app = File.open("/home/cheikh/HP/#{folder_name}/lib/app.rb", "a")#create a new ruby app.rb
  app.close

  app = File.open("/home/cheikh/HP/#{folder_name}/lib/app.rb", "a")
  app.close
  
  Dir.mkdir("/home/cheikh/HP/#{folder_name}/spec")

end
 
get_folder_name



