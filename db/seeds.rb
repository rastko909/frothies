# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = User.create(email: 'admin@gmail.com', password: 'password123', admin: true, is_vendor: false, first_name: 'Rastko', last_name: 'Beciric')
admin.save

puts 'created admin'

# we have to create a user before creating a vendor
vendor_account = User.create(email: 'vendor@gmail.com', password: 'password123', admin: false, is_vendor: true, first_name: 'John', last_name: 'Doe')
vendor = Vendor.new(company_name: 'Beer Master Beers', sales_total: 0, user_id: vendor_account.id)
vendor.save

puts 'created vendor 1'

vendor_account = User.create(email: 'furphy@gmail.com', password: 'password123', admin: false, is_vendor: true, first_name: 'Jane', last_name: 'Watson')
vendor = Vendor.new(company_name: 'Furphy', sales_total: 0, user_id: vendor_account.id)
vendor.save 

puts 'created vendor 2'

vendor_account = User.create(email: 'carlton@gmail.com', password: 'password123', admin: false, is_vendor: true, first_name: 'Bob', last_name: 'Bob')
vendor = Vendor.new(company_name: 'Carlton', sales_total: 0, user_id: vendor_account.id)
vendor.save 

puts 'created vendor 3'

customer = User.create(email: 'customer@gmail.com', password: 'password123', admin: false, is_vendor: false, first_name: 'Joe', last_name: 'Johnson')
customer.save

# puts 'created customer'

# puts '----------------'

# puts 'creating products'

# beer = Product.create(title: 'Furphy', description: 'Delicious Beer', category: 'Pale Ale', abv: 4.5, image_url: 'https://www.beerandbrewer.com/wp-content/uploads/sites/2/2017/03/Furphy-Can-768x576.jpg', price: 4.50, quantity: 24, vendor_id: 2)
# puts 'created furpy beer, belongs to vendor_id: 2'

# beer2 = Product.create(title: 'Carlton', description: 'Sensational Beer', category: 'Lager', abv: 4.7, image_url: 'https://cdn.shopify.com/s/files/1/0076/2868/5378/files/homepage_feature_1728x.jpg?v=1550122306', price: 3.50, quantity: 24, vendor_id: 3)

# puts 'created carlton beer, belongs to vendor_id: 3'