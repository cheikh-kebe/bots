require 'launchy'

def lunch
  search = ARGV.join("+")

  if ARGV.empty?
    puts  "Veuillez rentrer votre texte pour que se lance votre recherche"
  end

  Launchy.open "https://www.google.com/search?q=#{search}"
end

def perform
  lunch
end

perform