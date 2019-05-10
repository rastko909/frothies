# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

# create admin

admin = User.create(email: 'admin@gmail.com', password: 'password123', is_admin: true, is_vendor: false, first_name: 'Rastko', last_name: 'Beciric')
admin.save

puts 'created admin'

# -------------------------------------------

# create Castles

company_desc = "Castles in the Sky microbrewery was started by sisters Victoria and Nova Castle five years ago. Having grown up in Mornington Peninsula, they always loved the taste and the art of making craft beer. After visiting the US and learning to make brews like Boston Lager and Vanilla Porter from the best, the sisters bought an old farm and made their castle in the sky dream a reality."

p company_desc 

vendor_account = User.create(email: 'castles@inthesky.com', password: 'password123', is_admin: false, is_vendor: true, first_name: 'Victoria', last_name: 'Castle', address: '1 Industry Way, Mornington', state: 'VIC', postcode: 3931)

vendor = Vendor.new(company_name: 'Castles In The Sky', sales_total: 0, user_id: vendor_account.id, company_description: company_desc, company_address: '1 Industry Way, Mornington', state: 'VIC', postcode: 3931  , abn: 51824753556)
vendor.save 

p vendor

puts 'created vendor 1: castles@inthesky.com'

# -------------------------------------------

# create Unicorn

company_desc = "Unicorn started out as a hobby for high-school friends Jason Bourne, Sarah Richardson and Brendan James. But what was an innocent hobby took over their lives and became their passion and full time business. Hailing from WA, the trio make a mean IPA which has won them awards around the nation. They’ve since expanded their range of frothies to include Pale Ale, Red Ale and a Milk Stout."

p company_desc 

vendor_account = User.create(email: 'info@unicorn.com', password: 'password123', is_admin: false, is_vendor: true, first_name: 'Jason', last_name: 'Bourne', address: '1 Industry Way, Mornington', state: 'SA', postcode: 5008)

vendor = Vendor.new(company_name: 'Unicorn Brewery', sales_total: 0, user_id: vendor_account.id, company_description: company_desc, company_address: '1 Industry Way, Mornington', state: 'SA', postcode: 5008, abn: 51824751337)
vendor.save 

p vendor

puts 'created vendor 2: info@unicorn.com'

# -------------------------------------------

# create The Dude

company_desc = "The Dude is the brainchild of husband and wife team, James and Olga Pantsall. The couple decided to settle in Adelaide, South Australia, after Olga’s biochemistry research on vineyards took them across the world and back. Avid lovers of beer, the couple transferred their knowledge on wine to beer and have been living the dream ever since.  Of course, the Dude abides."

p company_desc 

vendor_account = User.create(email: 'info@thedude.com', password: 'password123', is_admin: false, is_vendor: true, first_name: 'Olga', last_name: 'Pantsall', address: '14-4 Collingwood St, Osborne Park ', state: 'WA', postcode: 6017)

vendor = Vendor.new(company_name: 'The Dude', sales_total: 0, user_id: vendor_account.id, company_description: company_desc, company_address: '14-4 Collingwood St, Osborne Park ', state: 'WA', postcode: 6017, abn: 51812751323)
vendor.save 

p vendor

puts 'created vendor 3: info@thedude.com'

# # ------------------------------

dob = Date.parse('27/01/1988')
customer = User.create(email: 'customer@gmail.com', password: 'password123', is_admin: false, is_vendor: false, first_name: 'Joe', last_name: 'Johnson', address: '8 Chatsworth Court, Springvale South', date_of_birth: '27/01/1988', state: 'VIC', postcode: 3172)
customer.save

puts 'created customer'

# # ------------------------------

puts 'creating products'

# castle products

beer = Product.create(title: 'Castles in the Sky: APA', description: 'Our American Pale Ale is hoppy, clean and buttery. Amber in colour with a pungent aroma.', category: 'American Pale Ale', abv: 6.0, price: 2.00, quantity: 144, vendor_id: 1)
url = 'https://i.imgur.com/4emFJCd.jpg'
file = open(url)
beer.image_url.attach(io: file, filename: "temp.#{file.content_type_parse.first.split("/").last}", content_type: file.content_type_parse.first)

beer = Product.create(title: 'Castles in the Sky: Golden Ale', description: 'Fruity and tropical, best enjoyed on a beach or at the end of a long day.', category: 'Golden Pale Ale', abv: 4.5, price: 2.20, quantity: 144, vendor_id: 1)
url = 'https://i.imgur.com/N00axy1.png'
file = open(url)
beer.image_url.attach(io: file, filename: "temp.#{file.content_type_parse.first.split("/").last}", content_type: file.content_type_parse.first)

beer = Product.create(title: 'Castles in the Sky: IPA', description: 'Full-flavoured IPA with hints of passionfruit thanks to our Aussie Galaxy hops.', category: 'Imperial Pale Ale', abv: 6.0, price: 1.90, quantity: 144, vendor_id: 1)
url = 'https://i.imgur.com/Q8MLncz.png'
file = open(url)
beer.image_url.attach(io: file, filename: "temp.#{file.content_type_parse.first.split("/").last}", content_type: file.content_type_parse.first)

beer = Product.create(title: 'Castles in the Sky: Amber Ale', description: 'Caramel with a medium high maltiness. Amazing buddy for a BBQ.', category: 'Amber Ale', abv: 5.0, price: 2.10, quantity: 144, vendor_id: 1)
url = 'https://i.imgur.com/y5ZiF19.png'
file = open(url)
beer.image_url.attach(io: file, filename: "temp.#{file.content_type_parse.first.split("/").last}", content_type: file.content_type_parse.first)

# unicorn products

beer = Product.create(title: 'Unicorn: IPA', description: 'Fruity and bitter with a sparkling, copper hue.', category: 'Imperial Pale Ale', abv: 5.8, price: 2.50, quantity: 144, vendor_id: 2)
url = 'https://i.imgur.com/Cz88dMy.png'
file = open(url)
beer.image_url.attach(io: file, filename: "temp.#{file.content_type_parse.first.split("/").last}", content_type: file.content_type_parse.first)

beer = Product.create(title: 'Unicorn: Pale Ale', description: 'Conditioned in the bottle naturally, our pale ale is gold both literally and metaphorically..', category: 'Pale Ale', abv: 4.5, price: 2.00, quantity: 144, vendor_id: 2)
url = 'https://i.imgur.com/2prUrIt.png'
file = open(url)
beer.image_url.attach(io: file, filename: "temp.#{file.content_type_parse.first.split("/").last}", content_type: file.content_type_parse.first)


beer = Product.create(title: 'Unicorn: Cherry Ale', description: 'Crimson, complex and aromatic. Enjoy now or aged.', category: 'Cherry Ale', abv: 6.5, price: 2.90, quantity: 144, vendor_id: 2)
url = 'https://i.imgur.com/E7cuTtX.png'
file = open(url)
beer.image_url.attach(io: file, filename: "temp.#{file.content_type_parse.first.split("/").last}", content_type: file.content_type_parse.first)


beer = Product.create(title: 'Unicorn: Stout', description: 'Strong and sensual with coffee and chocolate flavours.', category: 'Stout', abv: 6.0, price: 2.00, quantity: 144, vendor_id: 2)
url = 'https://i.imgur.com/BtDCvye.png'
file = open(url)
beer.image_url.attach(io: file, filename: "temp.#{file.content_type_parse.first.split("/").last}", content_type: file.content_type_parse.first)

# dude products

beer = Product.create(title: 'The Dude: IPA', description: 'You’ll love this one when you need a long drink. Strong on the booze but light and floral on the tongue.', category: 'Imperial Pale Ale', abv: 8.5, price: 2.90, quantity: 144, vendor_id: 3)
url = 'https://i.imgur.com/kXpHTOq.png'
file = open(url)
beer.image_url.attach(io: file, filename: "temp.#{file.content_type_parse.first.split("/").last}", content_type: file.content_type_parse.first)


beer = Product.create(title: 'The Dude: Gluten-Free Pale Ale', description: 'Has a tart taste mingling with the bitterness and floral hints.', category: 'Pale Ale', abv: 4.5, price: 2.00, quantity: 144, vendor_id: 3)
url = 'https://i.imgur.com/D1Euutp.png'
file = open(url)
beer.image_url.attach(io: file, filename: "temp.#{file.content_type_parse.first.split("/").last}", content_type: file.content_type_parse.first)


beer = Product.create(title: 'The Dude: Witbier', description: 'Orange peely vibe with a hint of spice. Keeps it real.', category: 'Belgian Wheat Beer', abv: 6.0, price: 2.00, quantity: 144, vendor_id: 3)
url = 'https://i.imgur.com/WclAmBp.png'
file = open(url)
beer.image_url.attach(io: file, filename: "temp.#{file.content_type_parse.first.split("/").last}", content_type: file.content_type_parse.first)

beer = Product.create(title: 'The Dude: Dubbel', description: 'Our Belgian-style dubbel is a very dark, sweet mouthful. Yeasty in a good way.', category: 'Belgian Brown Beer', abv: 5.5, price: 2.10, quantity: 144, vendor_id: 3)
url = 'https://i.imgur.com/Ehr0qtq.png'
file = open(url)
beer.image_url.attach(io: file, filename: "temp.#{file.content_type_parse.first.split("/").last}", content_type: file.content_type_parse.first)


