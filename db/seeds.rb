# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
article_list = [
  [ "Edward Michael GryllsFrance", 'Edward Michael Grylls OBE (born 7 June 1974),
  better known as Bear Grylls, is a British former SAS serviceman, survival
  instructor, and honorary lieutenant-colonel, and, outside his military career,
  an adventurer, writer, television presenter and businessman.' ],
  [ "William Shakespeare", ' was an English poet, playwright, and actor, widely
  regarded as the greatest writer in the English language and the world \' He is
  often called England\'s national poet and the "Bard of Avon'],
  [ "Nicolaus Copernicus", 'was a Renaissance-era polymath whose theory of the
  universe placed the Sun rather than Earth at the center of the universe, in all
  likelihood independently of Aristarchus of Samos, who had articulated similar
  ideas some eighteen centuries earlier.']
]

article_list.each do |name, description|
  Article.create( title: name, text: description )
end