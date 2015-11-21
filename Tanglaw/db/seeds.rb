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
researches = Research.create([{title: 'Research1', abstract: 'This is Research1'},
							  {title: 'Research2', abstract: 'This is Research2'},
							  {title: 'Research3', abstract: 'This is Research3'},
							  {title: 'Research4', abstract: 'This is Research4'},
							  {title: 'Research5', abstract: 'This is Research5'},
							  {title: 'Research6', abstract: 'This is Research6'},])