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

gc = User.create(username: 'gg@gg.com', password: 'Saging', f_name: 'GC', l_name: 'Sags', affiliation: 'MaSci')
jolo = User.create(username: 'jt@gg.com', password: 'Jackie', f_name: 'Jolo', l_name: 'Tan', affiliation: 'Puso mo')
joy = User.create(username: 'jy@gg.com', password: 'Angryy', f_name: 'Joy', l_name: 'Yee', affiliation: 'Hello Univ')
toph = User.create(username: 'cv@gg.com', password: '$3K$Y', f_name: 'Toph', l_name: 'Viz', affiliation: 'UST')
ed = User.create(username: 'ev@gg.com', password: '404notfound', f_name: 'Ed', l_name: 'Bald', affiliation: 'MaSci')

researches = Research.create([{title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', abstract: 'Fusce facilisis quis eros quis ullamcorper. In tincidunt a massa in congue. Sed in urna vitae ex aliquet faucibus ac a dui. '},
							  {title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ', abstract: ' Suspendisse quis est sed magna finibus facilisis quis laoreet mauris. Duis non elit id enim scelerisque faucibus. Pellentesque eget augue dignissim diam. '},
								{title: 'A Comprehensive Study on the Relationship of Making Ideas and Hackathons', abstract: 'Hackathons are supposed to show ideas instead of coding skills as it is a way to help the nation. Most hackathons focus on idea generation because coding is irrelevant in the thought process and it limits the ideas that can be made.'},
							  {title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', abstract: 'Proin commodo augue vel eros dictum, quis pulvinar dui varius. Curabitur sit amet ante commodo, sagittis nisl eget, gravida mi. Suspendisse potenti. '},
							  {title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', abstract: 'Proin convallis erat orci, ac eleifend sem dapibus varius. Aliquam laoreet enim eu nibh bibendum malesuada. Donec sit amet sagittis nunc. Maecenas. '},])
