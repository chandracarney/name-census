# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

year = 1980
occurrences = 4

20.times do
  Census.create(year: year, name: "Chandra", gender: "F", occurrences: occurrences)
  year += 1
  occurrences += 10
end

20.times do
  Census.create(year: year, name: "Brenda", gender: "F", occurrences: occurrences)
  year += 1
  occurrences += 100
end
