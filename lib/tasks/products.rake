require 'faker'
namespace :db do
  desc "Insert fake data to database"
  task products: :environment do
    # Create File Types #
    FileType.create(:mime => 'application/x-acad', :extension => '.dwg', :name => 'AutoCAD Drawing Database')
    FileType.create(:mime => 'application/x-easa-easa-file', :extension => '.easm', :name => 'SolidWorks eDrawing Electronic Assembly Data File')
    FileType.create(:mime => 'application/wbpz', :extension => '.wbpz', :name => 'ANSYS Workbench File')
    
    # Create Products for each user #
    User.all.each do |u|
      rand(5).times do
        u.products.new do |p|
          p.name = Faker::Company.name
          p.description = Faker::Lorem.paragraph(sentence_count = 3)
          p.attachment = Faker::Lorem.words.join('.')
          p.screenshot = Faker::Lorem.words.join('.') + '.png'
          p.checkouts = rand(100)
          p.file_type_id = 1 + rand(FileType.count)
          p.save
        end
      end
    end
  end
end
