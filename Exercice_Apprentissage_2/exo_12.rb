# 12. Annoncer l'âge, option BG
# Notre programme exo_11.rb est devenu beau gosse.
# Écris un programme exo_12.rb qui va faire la même chose, sauf que si X et Y sont égaux, il dira "Il y a n ans, tu avais la moitié de l'âge que tu as aujourd'hui".

require "date"

puts "Salut tu peux nous donner ton age, on fait un test"

final_age = gets.chomp.to_i
final_year = Time.now.year
birth_year = final_year - final_age

# because we start at 0 year we need to add + 1
(final_age + 1).times do |curent_age|
  current_year = birth_year + curent_age
  year_ago = final_age - curent_age

  before_or_after = if current_year < 2021
      "tu avais"
    else
      "tu as "
    end

  curent_age_text = if curent_age == (final_age / 2).round
      "la moitie de ton age"
    else
      "#{curent_age} ans"
    end

  puts "En #{current_year}, Il y a #{year_ago} ans #{before_or_after} #{curent_age_text}"
end
