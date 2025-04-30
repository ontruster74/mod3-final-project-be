# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
CustomerSubscription.destroy_all
Tea.destroy_all
Subscription.destroy_all
Customer.destroy_all

customer1 = Customer.create!(firstname: "Alice", lastname: "Smith", email: "asmith@gmail.com", address: "123 Builder St.")
customer2 = Customer.create!(firstname: "Bob", lastname: "Williams", email: "bwilliams@gmail.com", address: "27 Greenfinder Ln.")

subscription1 = Subscription.create!(title:"Monthly Tea Box", price:"15.00", status:"active", frequency:"Monthly")
subscription2 = Subscription.create!(title:"Weekly Tea Box", price:"5.00", status:"cancelled", frequency:"Weekly")

tea1 = Tea.create!(title:"Earl Grey", description:"A classic black tea with bergamot.", temperature: 30, brewtime: 20, subscription: subscription1)
tea2 = Tea.create!(title:"Sencha", description:"A Japanese green tea.", temperature: 60, brewtime: 40, subscription: subscription2)
tea3 = Tea.create!(title:"Chamomile", description:"A calming herbal infusion", temperature: 90, brewtime: 60, subscription: subscription1)

CustomerSubscription.create!(customer: customer1, subscription: subscription1)
CustomerSubscription.create!(customer: customer1, subscription: subscription2)
CustomerSubscription.create!(customer: customer2, subscription: subscription1)

