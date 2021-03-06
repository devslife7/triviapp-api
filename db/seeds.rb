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

<<<<<<< HEAD
User.create(username: "Andy", password: "password")
User.create(username: "marcos123", password: "password")
=======
User.create(name: 'Marcos', username: "marcos123", password: "password")
User.create(name: 'Andy', username: "andy123", password: "password")
User.create(name: 'Danny', username: "danny123", password: "password")
User.create(name: 'Dave', username: "dave123", password: "password")
User.create(name: 'David', username: "david123", password: "password")
User.create(name: 'Shannon', username: "shannon123", password: "password")
User.create(name: 'Solomon', username: "solomon123", password: "password")
User.create(name: 'Steve', username: "steve123", password: "password")
User.create(name: 'Yoan', username: "yoan123", password: "password")
User.create(name: 'Zara', username: "zara123", password: "password")
User.create(name: 'Catrina', username: "catrina123", password: "password")
User.create(name: 'Daniel', username: "daniel123", password: "password")
User.create(name: 'Diego', username: "diego123", password: "password")
User.create(name: 'Esther', username: "esther123", password: "password")
User.create(name: 'Issa', username: "issa123", password: "password")
User.create(name: 'Kosi', username: "kosi123", password: "password")
User.create(name: 'Paul', username: "paul123", password: "password")
User.create(name: 'PaulsCat', username: "paulscat123", password: "password")
User.create(name: 'Matine', username: "matine123", password: "password")
User.create(name: 'Su', username: "su123", password: "password")
User.create(name: 'Maddie', username: "maddie123", password: "password")
User.create(name: 'MaddiesChild', username: "maddieschild123", password: "password")
User.create(name: 'Steven', username: "steven123", password: "password")
User.create(name: 'EsthersCat', username: "estherscat123", password: "password")
User.create(name: 'AndysDog', username: "andysdog123", password: "password")
User.create(name: 'DanysTooth', username: "DanysTooth123", password: "password")
User.create(name: 'Jordan', username: "Jordan123", password: "password")
User.create(name: 'Luis', username: "luis123", password: "password")
User.create(name: 'Mike', username: "mike123", password: "password")
User.create(name: 'Princeton', username: "princeton123", password: "password")
User.create(name: 'Shawn', username: "shawn123", password: "password")
User.create(name: 'Vidhi', username: "vidhi123", password: "password")
User.create(name: 'Michael', username: "michael123", password: "password")
User.create(name: 'Ian', username: "ian123", password: "password")
User.create(name: 'Tien', username: "tien123", password: "password")
User.create(name: 'Jr', username: "Sr123", password: "password")
User.create(name: 'Matteo', username: "matteo123", password: "password")
>>>>>>> master

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

