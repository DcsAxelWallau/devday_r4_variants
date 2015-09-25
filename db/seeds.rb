# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

100.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  domain = Faker::Internet.domain_name

  Contact.create({
                     :name => "#{first_name} #{last_name}",
                     :street_address =>Faker::Address.street_address,
                     :zip =>  Faker::Address.zip,
                     :email => "#{first_name.downcase}.#{last_name.downcase}@#{domain}",
                     :phone => Faker::PhoneNumber.cell_phone,
                     :gender => %w(male female).sample
                 })

end

