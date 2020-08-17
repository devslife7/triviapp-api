class QuestionsController < ApplicationController

    def index
        questions = Question.all.sample(10)
        render json: questions
    end
end
