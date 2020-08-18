class GamesController < ApplicationController
    skip_before_action :authorized, only: [:create]

def create
    game = Game.new(game_params)
    
    user= User.find_by(username: params[:game][:username])
    byebug
    
    if user
        game.save
        game.users << user
        render :json => game.to_json(:include => :user_games)
    else 
        render json: { message: "that didn't work"}
    end

end

private

def game_params
    params.require(:game).permit(:name, :active)
end

end
