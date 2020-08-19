# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

UserGame.destroy_all
GameQuestion.destroy_all
Friendship.destroy_all
User.destroy_all
Game.destroy_all
Question.destroy_all

User.create(name: 'Marcos', username: "marcos123", password: "password")
User.create(name: 'Andy', username: "andy123", password: "password")
User.create(name: 'Danny', username: "danny123", password: "password")
User.create(name: 'Dave', username: "dave123", password: "password")
User.create(name: 'Luis', username: "luis123", password: "password")
User.create(name: 'Mike', username: "mike123", password: "password")
User.create(name: 'Steve', username: "steve123", password: "password")

def questions
    response = RestClient.get 'https://opentdb.com/api.php?amount=50&category=9&difficulty=easy&type=multiple'
    json = JSON.parse response



    if !json.nil?
        json["results"].map do |question|
            
            Question.create(question: question["question"], 
                difficulty: question["difficulty"], 
                category: question["category"], 
                correct: question["correct_answer"],
                incorrect1: question["incorrect_answers"][0],
                incorrect2: question["incorrect_answers"][1],
                incorrect3: question["incorrect_answers"][2]
            )
        end
    else 
        puts "can't seed, bro"
    end
end

def science_questions
    response = RestClient.get 'https://opentdb.com/api.php?amount=30&category=17&difficulty=easy&type=multiple'
    json = JSON.parse response



    if !json.nil?
        json["results"].map do |question|
            
            Question.create(question: question["question"], 
                difficulty: question["difficulty"], 
                category: question["category"], 
                correct: question["correct_answer"],
                incorrect1: question["incorrect_answers"][0],
                incorrect2: question["incorrect_answers"][1],
                incorrect3: question["incorrect_answers"][2]
            )
        end
    else 
        puts "can't seed, bro"
    end
end

def sports_questions
    response = RestClient.get 'https://opentdb.com/api.php?amount=40&category=21&difficulty=easy&type=multiple'
    json = JSON.parse response



    if !json.nil?
        json["results"].map do |question|
            
            Question.create(question: question["question"], 
                difficulty: question["difficulty"], 
                category: question["category"], 
                correct: question["correct_answer"],
                incorrect1: question["incorrect_answers"][0],
                incorrect2: question["incorrect_answers"][1],
                incorrect3: question["incorrect_answers"][2]
            )
        end
    else 
        puts "can't seed, bro"
    end
end

def mythology_questions
    response = RestClient.get 'https://opentdb.com/api.php?amount=12&category=20&difficulty=easy&type=multiple'
    json = JSON.parse response



    if !json.nil?
        json["results"].map do |question|
            
            Question.create(question: question["question"], 
                difficulty: question["difficulty"], 
                category: question["category"], 
                correct: question["correct_answer"],
                incorrect1: question["incorrect_answers"][0],
                incorrect2: question["incorrect_answers"][1],
                incorrect3: question["incorrect_answers"][2]
            )
        end
    else 
        puts "can't seed, bro"
    end
end

def history_questions
    response = RestClient.get 'https://opentdb.com/api.php?amount=40&category=23&difficulty=easy&type=multiple'
    json = JSON.parse response



    if !json.nil?
        json["results"].map do |question|
            
            Question.create(question: question["question"], 
                difficulty: question["difficulty"], 
                category: question["category"], 
                correct: question["correct_answer"],
                incorrect1: question["incorrect_answers"][0],
                incorrect2: question["incorrect_answers"][1],
                incorrect3: question["incorrect_answers"][2]
            )
        end
    else 
        puts "can't seed, bro"
    end
end

def film_questions
    response = RestClient.get 'https://opentdb.com/api.php?amount=30&category=11&difficulty=easy&type=multiple'
    json = JSON.parse response



    if !json.nil?
        json["results"].map do |question|
            
            Question.create(question: question["question"], 
                difficulty: question["difficulty"], 
                category: question["category"], 
                correct: question["correct_answer"],
                incorrect1: question["incorrect_answers"][0],
                incorrect2: question["incorrect_answers"][1],
                incorrect3: question["incorrect_answers"][2]
            )
        end
    else 
        puts "can't seed, bro"
    end
end

def music_questions
    response = RestClient.get 'https://opentdb.com/api.php?amount=30&category=12&difficulty=easy&type=multiple'
    json = JSON.parse response



    if !json.nil?
        json["results"].map do |question|
            
            Question.create(question: question["question"], 
                difficulty: question["difficulty"], 
                category: question["category"], 
                correct: question["correct_answer"],
                incorrect1: question["incorrect_answers"][0],
                incorrect2: question["incorrect_answers"][1],
                incorrect3: question["incorrect_answers"][2]
            )
        end
    else 
        puts "can't seed, bro"
    end
end




questions
science_questions
sports_questions
history_questions
mythology_questions
film_questions
music_questions


puts "HOLY SHIT IT WORKED!"

