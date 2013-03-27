require 'faker'
namespace :db do
  desc "Insert fake data to database"
  task accounts: :environment do
    # Create 20 Countries #
    20.times do
      Country.create(:code => Faker::Address.state_abbr, :name => Faker::Address.country)
    end

    #Create Experience Types #
    Experience.create(:name => 'Student')
    Experience.create(:name => 'Faculty')
    Experience.create(:name => 'Professional')
    
    # Create Accounts for each user #
    User.all.each do |u|
      u.create_account(:address => ("%s, %s" % [Faker::Address.street_address, Faker::Address.street_name]),
        :bio => Faker::Lorem.paragraph,
        :birthdate => Date.new,
        :country_id => 1 + rand(Country.count),
        :experience_id => 1 + rand(Experience.count))
    end
  end
end
