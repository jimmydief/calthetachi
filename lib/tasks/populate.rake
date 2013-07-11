# lib/tasks/populate.rake
#
# Rake task to populate development database with test data
# Run it with "rake db:populate"
# See Railscast 126 and the faker website for more information

namespace :db do
  desc "Erase and fill posts and comments in database"
  task :populate => :environment do
    require 'faker'

    Post.destroy_all

    # Create new posts
    100.times do |w|
      post = Post.create!(:title => Faker::Lorem.sentence,
        :author => Faker::Name.name,
        :text => Faker::Lorem.paragraphs(3))
        
      # Create comments for post
      5.times do |p|
        Comment.create!(:post_id => post.id,
          :name => Faker::Name.name,
          :text => Faker::Lorem.paragraph)
      end  
    end
    
  end
end