# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{  name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
["MEXICAN", "AMERICAN", "ASIAN", "CONTINENTAL", "ITALIAN", 
"DAILY SPECIALITY", "ETHNIC", "FAST FOOD", "CASUAL DINING",
"FAMILY STYLE", "FINE DINING", "BARBECUE", "CAFE", "PUB"].each do |cat|
  Category.where(name: cat).first_or_create
end
