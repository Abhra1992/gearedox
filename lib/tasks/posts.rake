require 'faker'
namespace :db do
  desc "Insert fake data to database"
  task posts: :environment do
    # Create Posts for each user #
    User.all.each do |u|
      rand(5).times do
        u.posts.new do |p|
          p.head = Faker::Lorem.sentence
          p.body = Faker::Lorem.paragraph(sentence_count = 7)
          p.save
        end
      end
    end

    # Create Comments for Posts #
    Post.all.each do |p|
      rand(5).times do
        p.comments.new do |c|
          c.user_id = 1 + rand(User.count)
          c.body = Faker::Lorem.paragraph
          c.save
        end
      end
    end
    # The End #
  end
end
