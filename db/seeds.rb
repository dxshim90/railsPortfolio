# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
Topic.create(title: "Topic #{topic}")
end


10.times do |blog|
  Blog.create!(
    title: "Blog#{blog}", body: 'LIPSUM LIPSUM LIPSUM LIPSUM LIPSUM LIPSUM LIPSUM LIPSUM LIPSUM ',
    topic_id: Topic.last.id
  )
end

puts '10 Blogs created'

5.times do |skill|
  Skill.create!(
    title: "Skill #{skill} ", percent: 10
  )
end

puts '5 skills created'

8.times do |portfolio_item|
  MyPortfolio.create!(
    title: "MyPortfolio_item #{portfolio_item}",
    subtitle: 'Service',
    body: 'LIPSUM LIPSUM LIPSUM LIPSUM',
    main_image: 'https://via.placeholder.com/600x400',
    tumb_image: 'https://via.placeholder.com/350x150'
  )
end


1.times do |portfolio_item|
  MyPortfolio.create!(
    title: "MyPortfolio_item #{portfolio_item}",
    subtitle: 'React',
    body: 'LIPSUM LIPSUM LIPSUM LIPSUM',
    main_image: 'https://via.placeholder.com/600x400',
    tumb_image: 'https://via.placeholder.com/350x150'
  )
end

3.times do |technology| 

MyPortfolio.last.technologies.create(
  name: "Technology #{technology}",

)
end
puts "3 techs added"
