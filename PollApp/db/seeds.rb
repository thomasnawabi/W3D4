# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
johnny = User.create!(user_name: "johnnyrockets")
thomas = User.create!(user_name: "thomasss")
theo = User.create!(user_name: "theoo")
tommy = User.create!(user_name: "tommyy")

Poll.destroy_all
poll1 = Poll.create!(author_id: johnny.id, title: "Lunch")
# poll2 = Poll.create!(author_id: thomas.id, title: "Breakfast")
# poll3 = Poll.create!(author_id: theo.id, title: "Dinner")
# poll4 = Poll.create!(author_id: tommy.id, title: "Snacks")

Question.destroy_all
question1 = Question.create!(poll_id: poll1.id, q_title: "What should we get for lunch?!")
# question2 = Question.create!(poll_id: poll2.id, q_title: "What should we get for breakfast?!")
# question3 = Question.create!(poll_id: poll3.id, q_title: "What should we get for dinner?!")
# question4 = Question.create!(poll_id: poll4.id, q_title: "What should we get for snacks?!")


AnswerChoice.destroy_all
answer_choice1 = AnswerChoice.create!(question_id: question1.id, answers: "Taco Bell")
answer_choice2 = AnswerChoice.create!(question_id: question1.id, answers: "McDonalds")
# answer_choice3 = AnswerChoice.create!(question_id: question2.id, answers: "Chic-fil-a")
# answer_choice4 = AnswerChoice.create!(question_id: question2.id, answers: "Burger King")
# answer_choice5 = AnswerChoice.create!(question_id: question3.id, answers: "Applebees")
# answer_choice6 = AnswerChoice.create!(question_id: question3.id, answers: "Pizzeria")
# answer_choice7 = AnswerChoice.create!(question_id: question4.id, answers: "Outback")
# answer_choice8 = AnswerChoice.create!(question_id: question4.id, answers: "Red Lobster")

Response.destroy_all
response1 = Response.create!(responder_id: johnny.id, answers_id: answer_choice2.id)
response2 = Response.create!(responder_id: thomas.id, answers_id: answer_choice2.id)
response3 = Response.create!(responder_id: theo.id, answers_id: answer_choice2.id)
response4 = Response.create!(responder_id: tommy.id, answers_id: answer_choice2.id)
