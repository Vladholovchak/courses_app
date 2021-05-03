User.create!(email: 'admin@example.com', password: 'admin@example.com', password_confirmation: 'admin@example.com')
30.times do
  Course.create!([{
                   title: Faker::Educator.course_name,
                   description: Faker::TvShows::GameOfThrones.quote,
                   short_description: Faker::Quote.famous_last_words,
                   language: Faker::ProgrammingLanguage.name,
                   level: 'Beginner',
                   price: Faker::Number.between(from: 100, to: 10000),
                   user_id: User.first.id
                 }])
end
