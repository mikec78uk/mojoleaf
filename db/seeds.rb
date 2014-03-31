# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Option.create(category: 'good', option_name: 'Appealing')
Option.create(category: 'good', option_name: 'Attractive')
Option.create(category: 'good', option_name: 'Calm')
Option.create(category: 'good', option_name: 'Cheerful')
Option.create(category: 'good', option_name: 'Clean')
Option.create(category: 'good', option_name: 'Empowering')
Option.create(category: 'good', option_name: 'Entertaining')
Option.create(category: 'good', option_name: 'Friendly')
Option.create(category: 'good', option_name: 'Fun')
Option.create(category: 'good', option_name: 'High Quality')
Option.create(category: 'good', option_name: 'Innovative')
Option.create(category: 'good', option_name: 'Inspiring')
Option.create(category: 'good', option_name: 'Professional')
Option.create(category: 'good', option_name: 'Simple')
Option.create(category: 'good', option_name: 'Trustworthy')
Option.create(category: 'bad', option_name: 'Boring')
Option.create(category: 'bad', option_name: 'Busy')
Option.create(category: 'bad', option_name: 'Cluttered')
Option.create(category: 'bad', option_name: 'Complex')
Option.create(category: 'bad', option_name: 'Confusing')
Option.create(category: 'bad', option_name: 'Dated')
Option.create(category: 'bad', option_name: 'Dull')
Option.create(category: 'bad', option_name: 'Hard to use')
Option.create(category: 'bad', option_name: 'Illogical')
Option.create(category: 'bad', option_name: 'Intimidating')
Option.create(category: 'bad', option_name: 'Old')
Option.create(category: 'bad', option_name: 'Ordinary')
Option.create(category: 'bad', option_name: 'Overbearing')
Option.create(category: 'bad', option_name: 'Poor Quality')
Option.create(category: 'bad', option_name: 'Unattractive')

Content.create(quote: 'People use look and feel as their first indicator of trust', quote_by: 'Susan M. Weinschenk; 100 Things Every Designer Needs to Know About People: What Makes Them Tick?', tagline: 'Find out what people think when they see your site for the first time')
Content.create(quote: 'It only takes 50 milliseconds (1/20th of a second) to form a first impression', quote_by: 'Gitte Lindgaard; Gary Fernandes, Cathy Dudek and J Brown; Attention Web Designers; Behaviour & Information Technology, 2006', tagline: 'Find out what people think when they see your site for the first time')
Content.create(quote: 'People make initial assessments of the credibility of computing technology based on firsthand inspection of surface traits like layout', quote_by: 'B. J. Fogg; Persuasive Technology: Using Computers to Change What We Think and Do (Interactive Technologies)', tagline: 'Find out what people think when they see your site for the first time')
Content.create(quote: 'Aesthetically pleasing designs are often perceived as being easier to use', quote_by: 'Stephen P. Anderson; Mental Note Cards', tagline: 'Find out what people think when they see your site for the first time')

