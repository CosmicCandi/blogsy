# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  #Create a randomized user
  uname = Faker::LordOfTheRings.character
  user = User.create!( username: uname,
                       email: Faker::Internet.free_email(uname)
                      )
  (1..10).to_a.sample.times do
    #create a random number of random posts for that user
    random_title_post = [Faker::Hacker.say_something_smart, Faker::ChuckNorris.fact, Faker::HarryPotter.quote, Faker::StarWars.quote]
    Post.create!(
    title: random_title_post.sample,
    body: random_title_post.sample,
    user: user
    )

    (1..5).to_a.sample.times do
      users = User.all
      posts = Post.all
      Comment.create!(
        body: Faker::TwinPeaks.quote,
        user: users.sample,
        post: posts.sample
      )
    end

  end
end
