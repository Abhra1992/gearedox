require 'faker'
namespace :db do
  desc "Insert fake data to database"
  task users: :environment do
    # Create 10 users #
    10.times do
      User.new do |u|
        u.firstname = Faker::Name.first_name
        u.lastname = Faker::Name.last_name
        u.username = Faker::Internet.user_name(u.firstname)
        u.phone = Faker::Base.regexify('9[0-9]{9}')
        u.email = Faker::Internet.safe_email(u.firstname)
        u.password = '00000000'
        u.save
      end
    end
  end
end
