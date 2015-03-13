# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# ORIGINALLY TO POPULATE FIELDS

# Option.create(category: 'good', option_name: 'Appealing')
# Option.create(category: 'good', option_name: 'Attractive')
# Option.create(category: 'good', option_name: 'Calm')
# Option.create(category: 'good', option_name: 'Cheerful')
# Option.create(category: 'good', option_name: 'Clean')
# Option.create(category: 'good', option_name: 'Empowering')
# Option.create(category: 'good', option_name: 'Entertaining')
# Option.create(category: 'good', option_name: 'Friendly')
# Option.create(category: 'good', option_name: 'Fun')
# Option.create(category: 'good', option_name: 'High Quality')
# Option.create(category: 'good', option_name: 'Innovative')
# Option.create(category: 'good', option_name: 'Inspiring')
# Option.create(category: 'good', option_name: 'Professional')
# Option.create(category: 'good', option_name: 'Simple')
# Option.create(category: 'good', option_name: 'Trustworthy')
# Option.create(category: 'bad', option_name: 'Boring')
# Option.create(category: 'bad', option_name: 'Busy')
# Option.create(category: 'bad', option_name: 'Cluttered')
# Option.create(category: 'bad', option_name: 'Complex')
# Option.create(category: 'bad', option_name: 'Confusing')
# Option.create(category: 'bad', option_name: 'Dated')
# Option.create(category: 'bad', option_name: 'Dull')
# Option.create(category: 'bad', option_name: 'Hard to use')
# Option.create(category: 'bad', option_name: 'Illogical')
# Option.create(category: 'bad', option_name: 'Intimidating')
# Option.create(category: 'bad', option_name: 'Old')
# Option.create(category: 'bad', option_name: 'Ordinary')
# Option.create(category: 'bad', option_name: 'Overbearing')
# Option.create(category: 'bad', option_name: 'Poor Quality')
# Option.create(category: 'bad', option_name: 'Unattractive')

# ORIGINAL QUOTE TEXT

# Content.create(quote: 'People use look and feel as their first indicator of trust', quote_by: 'Susan M. Weinschenk; 100 Things Every Designer Needs to Know About People: What Makes Them Tick?', tagline: 'Find out what people think when they see your site for the first time')
# Content.create(quote: 'It only takes 50 milliseconds (1/20th of a second) to form a first impression', quote_by: 'Gitte Lindgaard; Gary Fernandes, Cathy Dudek and J Brown; Attention Web Designers; Behaviour & Information Technology, 2006', tagline: 'Find out what people think when they see your site for the first time')
# Content.create(quote: 'People make initial assessments of the credibility of computing technology based on firsthand inspection of surface traits like layout', quote_by: 'B. J. Fogg; Persuasive Technology: Using Computers to Change What We Think and Do (Interactive Technologies)', tagline: 'Find out what people think when they see your site for the first time')
# Content.create(quote: 'Aesthetically pleasing designs are often perceived as being easier to use', quote_by: 'Stephen P. Anderson; Mental Note Cards', tagline: 'Find out what people think when they see your site for the first time')

Content.create(quote: 'People use look and feel as their first indicator of trust', quote_by: 'Susan M. Weinschenk; <a class="blue-link" target="_blank"  href="http://www.amazon.co.uk/gp/product/0321767535/ref=as_li_tl?ie=UTF8&camp=1634&creative=6738&creativeASIN=0321767535&linkCode=as2&tag=mojoleaf-21&linkId=CBJ7TEWCVC3TIG2X">100 Things Every Designer Needs to Know About People: What Makes Them Tick?</a><img src="http://ir-uk.amazon-adsystem.com/e/ir?t=mojoleaf-21&l=as2&o=2&a=0321767535" width="1" height="1" border="0" alt="" style="border:none !important; margin:0px !important;" />', tagline: 'Find out what people think when they see your site for the first time')
Content.create(quote: 'It only takes 50 milliseconds (1/20th of a second) to form a first impression', quote_by: 'Gitte Lindgaard; Gary Fernandes, Cathy Dudek and J Brown; Attention Web Designers; Behaviour & Information Technology, 2006', tagline: 'Find out what people think when they see your site for the first time')
Content.create(quote: 'People make initial assessments of the credibility of computing technology based on firsthand inspection of surface traits like layout', quote_by: 'B. J. Fogg; <a class="blue-link" target="_blank"   href="http://www.amazon.co.uk/gp/product/1558606432/ref=as_li_tl?ie=UTF8&camp=1634&creative=6738&creativeASIN=1558606432&linkCode=as2&tag=mojoleaf-21&linkId=J43NEB5URCSPWD22">Persuasive Technology: Using Computers to Change What We Think and Do (Interactive Technologies)</a><img src="http://ir-uk.amazon-adsystem.com/e/ir?t=mojoleaf-21&l=as2&o=2&a=1558606432" width="1" height="1" border="0" alt="" style="border:none !important; margin:0px !important;" />', tagline: 'Find out what people think when they see your site for the first time')
Content.create(quote: 'Aesthetically pleasing designs are often perceived as being easier to use', quote_by: 'Stephen P. Anderson; <a class="blue-link" target="_blank"   href="http://www.amazon.co.uk/gp/product/0321725522/ref=as_li_tl?ie=UTF8&camp=1634&creative=6738&creativeASIN=0321725522&linkCode=as2&tag=mojoleaf-21&linkId=56I2AQLV5Y5SO5EA">Seductive Interaction Design: Creating Playful, Fun, and Effective User Experiences</a><img src="http://ir-uk.amazon-adsystem.com/e/ir?t=mojoleaf-21&l=as2&o=2&a=0321725522" width="1" height="1" border="0" alt="" style="border:none !important; margin:0px !important;" />', tagline: 'Find out what people think when they see your site for the first time')
