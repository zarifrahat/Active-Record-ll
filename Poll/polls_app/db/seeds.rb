# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


ActiveRecord::Base.transaction do
  User.destroy_all
  user1 = User.create!(username: 'CJ')
  user2 = User.create!(username: 'Flarnie')
  user3 = User.create!(username: 'Jeff')
  user4 = User.create!(username: 'Georges St. Pierre')
  user5 = User.create!(username: 'Ned')

  Poll.destroy_all
  poll1 = Poll.create!(title: 'Poll1', author_id: user5.id)
  poll2 = Poll.create!(title: 'Poll2', author_id: user1.id)

  Question.destroy_all
  Question.create!(text: 'Who is the smartest?', poll_id: poll1.id)
  Question.create!(text: "Who is the funniest?", poll_id: poll1.id)
  Question.create!(text: "Who has the most money?" poll_id: poll2.id)
  Question.create!(text: "Where do you get off?" poll_id: poll2.id)


  AnswerChoice.destroy_all
  AnswerChoice.create!(text: 'Danny', poll_id: poll1.id)
  AnswerChoice.create!(text: "Other", poll_id: poll1.id)

  AnswerChoice.create!(text: "Who has the most money?" poll_id: poll2.id)
  AnswerChoice.create!(text: "Where do you get off?" poll_id: poll2.id)
end