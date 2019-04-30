# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = User.create(email: 'admin@gmail.com', password: 'password123', admin: true, vendor: false, first_name: 'Rastko', last_name: 'Beerboi')
admin.save

puts 'created admin'

# we have to create a user before creating a vendor
vendor_account = User.create(email: 'vendor@gmail.com', password: 'password123', admin: false, vendor: true, first_name: 'Beer', last_name: 'Master')

# now we make a vendor, assign the vendor a user_id ! 
vendor = Vendor.new(company_name: 'Big Boi Beers', sales_total: 0)
vendor_account.id
vendor.user_id = vendor_account.id
vendor.save

puts 'created vendor'

customer = User.create(email: 'customer@gmail.com', password: 'password123', admin: false, vendor: false, first_name: 'Joe', last_name: 'Joe')
customer.save

puts 'created customer'