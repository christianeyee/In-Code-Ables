# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Category.create([{name: 'Agriculture'}, {name: 'Economy'}, {name: 'Environment'},
							  {name: 'Population'}, {name: 'Transportation'}, {name: 'Communication'},
							  {name: 'Finance'}, {name: 'Health'}, {name: 'Employment'}, 
							  {name: 'Social Welfare'}, {name: 'Geospatial'}])

User.create!(username: 'gg@gg.com', password: 'Saging', f_name: 'GC', l_name: 'Sags', affiliation: 'MaSci')
User.create!(username: 'jt@gg.com', password: 'Jackie', f_name: 'Jolo', l_name: 'Tan', affiliation: 'Puso mo')
User.create!(username: 'jy@gg.com', password: 'Angryy', f_name: 'Joy', l_name: 'Yee', affiliation: 'Hello Univ')
User.create!(username: 'cv@gg.com', password: '$3K$Y', f_name: 'Toph', l_name: 'Viz', affiliation: 'UST')
User.create!(username: 'ev@gg.com', password: '404notfound', f_name: 'Ed', l_name: 'Bald', affiliation: 'MaSci')
