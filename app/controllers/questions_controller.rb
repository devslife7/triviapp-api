class QuestionsController < ApplicationController
    skip_before_action :authorized, only: [:index]

    def index
        questions = Question.all.sample(10)
        render json: questions
    end
end
