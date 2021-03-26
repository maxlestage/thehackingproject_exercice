# 14. Afficher les bons emails
# Prends le programme exo_14.rb et créé un programme exo_19.rb qui va reprendre l'array des emails créés, et n'afficher que les emails avec un nombre pair.

# "jean.dupont.02@email.fr"
# "jean.dupont.04@email.fr"
# etc..


puts "Salut! on test notre anti-spam, tu pourrais nous aider?"
puts "Si tu es d'accord, tu peux saisir ton Prénom?"
firstname = "Max" #gets.chomp
puts "Ainsi que ton nom?"
lastname = "Lestage" #gets.chomp


run_new_email = Array.new(50) do |index|
    index += 1

    next if index.odd? 

    formatted_index = sprintf("%02d", index) #   https://apidock.com/ruby/Kernel/sprintf

    "#{firstname.downcase}.#{lastname.downcase}.#{formatted_index}@email.fr"

end

print run_new_email.compact