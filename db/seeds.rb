# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

# create admin

admin = User.create(email: 'admin@gmail.com', password: 'password123', is_admin: true, is_vendor: false, first_name: 'Rastko', last_name: 'Beciric')
admin.save

puts 'created admin'

# -------------------------------------------

# we have to create a user before creating a vendor

vendor_account = User.create(email: 'vendor@gmail.com', password: 'password123', is_admin: false, is_vendor: true, first_name: 'John', last_name: 'Doe')
vendor = Vendor.new(company_name: 'Beer Master Beers', sales_total: 0, user_id: vendor_account.id)
vendor.save

puts 'created vendor 1'

# -------------------------------------------

# create furphy

company_desc = "Furphy is a refreshing ale that is Geelong born and brewed from 100% Victorian hops & malt. Given our Geelong brewery used to be an old wool will, it's no surprise Furphy is an easy-drinking ale that's perfect for a session of yarn spinning."

p company_desc 

vendor_account = User.create(email: 'furphy@gmail.com', password: 'password123', is_admin: false, is_vendor: true, first_name: 'Jane', last_name: 'Watson')

vendor = Vendor.new(company_name: 'Furphy', sales_total: 0, user_id: vendor_account.id, company_description: company_desc, company_address: '264-270 Normanby Rd, South Melbourne', state: 'VIC', postcode: 3323, abn: 51824753556)
vendor.save 

p vendor

puts 'created vendor 2: furphy@gmail.com'

# create carlton

company_desc = "The Pub. The last bastion of real mateship and a sacred place where life’s big questions, such as the footy score, are resolved. It also happens to be the place where Carlton was born to be enjoyed at its best and freshest.
 
Our proud tradition of brewery fresh beer dates back to 1864. This was when the first batch of Carlton was delivered to pubs in the local area by the same Clydesdales that grace our taps, glasses and packs today."

vendor_account = User.create(email: 'carlton@gmail.com', password: 'password123', is_admin: false, is_vendor: true, first_name: 'Bob', last_name: 'Bob')

vendor = Vendor.new(company_name: 'Carlton', sales_total: 0, user_id: vendor_account.id, company_description: company_desc, state: 'VIC', postcode: 3113, abn: 51824751337)
vendor.save 

puts 'created vendor 3: carlton@gmail.com'

# # ------------------------------

dob = Date.parse('27/01/1988')
customer = User.create(email: 'customer@gmail.com', password: 'password123', is_admin: false, is_vendor: false, first_name: 'Joe', last_name: 'Johnson', address: '3 Chatsworth Court, Springvale South', date_of_birth: '27/01/1988', state: 'VIC', postcode: 3172)
customer.save

puts 'created customer'

# puts '----------------'

# puts 'creating products'

beer = Product.create(title: 'Furphy', description: 'Delicious Beer', category: 'Pale Ale', abv: 4.5, price: 4.50, quantity: 24, vendor_id: 2)

url = 'https://www.beerandbrewer.com/wp-content/uploads/sites/2/2017/03/Furphy-Can-768x576.jpg'
file = open(url)
beer.image_url.attach(io: file, filename: "temp.#{file.content_type_parse.first.split("/").last}", content_type: file.content_type_parse.first)
puts 'created furpy beer, belongs to vendor_id: 2'

# beer = Product.create(title: 'Furphy Lite', description: 'Delicious Lite Beer', category: 'Pale Ale', abv: 4.5, price: 5.50, quantity: 12, vendor_id: 2)
# url = 'https://www.beerandbrewer.com/wp-content/uploads/sites/2/2017/03/Furphy-Can-768x576.jpg'
# file = open(url)
# beer.image_url.attach(io: file, filename: "temp.#{file.content_type_parse.first.split("/").last}", content_type: file.content_type_parse.first)
# puts 'created furpy lite beer, belongs to vendor_id: 2'

beer2 = Product.create(title: 'Carlton', description: 'Sensational Beer', category: 'Lager', abv: 4.7, price: 3.50, quantity: 24, vendor_id: 3)
url = 'https://cdn.shopify.com/s/files/1/0076/2868/5378/files/homepage_feature_1728x.jpg?v=1550122306'
file = open(url)
beer2.image_url.attach(io: file, filename: "temp.#{file.content_type_parse.first.split("/").last}", content_type: file.content_type_parse.first)
puts 'created carlton beer, belongs to vendor_id: 3'

# beer2 = Product.create(title: 'Carlton Fresh', description: 'Just like Carlton on tap, for you to enjoy at home!', category: 'Lager', abv: 4.7, price: 6.50, quantity: 6, vendor_id: 3)
# url = 'https://cdn.shopify.com/s/files/1/0076/2868/5378/files/homepage_feature_1728x.jpg?v=1550122306'
# file = open(url)
# beer2.image_url.attach(io: file, filename: "temp.#{file.content_type_parse.first.split("/").last}", content_type: file.content_type_parse.first)
# puts 'created carlton fresh beer, belongs to vendor_id: 3'

