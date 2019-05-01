# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = User.create(email: 'admin@gmail.com', password: 'password123', admin: true, vendor: false, first_name: 'Rastko', last_name: 'Beciric')
admin.save

puts 'created admin'

# we have to create a user before creating a vendor
vendor_account = User.create(email: 'vendor@gmail.com', password: 'password123', admin: false, vendor: true, first_name: 'John', last_name: 'Doe')
vendor = Vendor.new(company_name: 'Beer Master Beers', sales_total: 0, user_id: vendor_account.id)
vendor.save

puts 'created vendor 1'

vendor_account = User.create(email: 'furphy@gmail.com', password: 'password123', admin: false, vendor: true, first_name: 'Jane', last_name: 'Watson')
vendor = Vendor.new(company_name: 'Furphy', sales_total: 0, user_id: vendor_account.id)
vendor.save 

puts 'created vendor 2'

vendor_account = User.create(email: 'carlton@gmail.com', password: 'password123', admin: false, vendor: true, first_name: 'Bob', last_name: 'Bob')
vendor = Vendor.new(company_name: 'Carlton', sales_total: 0, user_id: vendor_account.id)
vendor.save 

puts 'created vendor 3'

customer = User.create(email: 'customer@gmail.com', password: 'password123', admin: false, vendor: false, first_name: 'Joe', last_name: 'Johnson')
customer.save

puts 'created customer'