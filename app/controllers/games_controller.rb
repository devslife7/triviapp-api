class GamesController < ApplicationController
    skip_before_action :authorized, only: [:create, :show]

def create
    game = Game.new(game_params)
    
    user= User.find_by(username: params[:game][:username])
    
    
    if user
        game.save
        game.users << user
        render :json => { game: GameSerializer.new(game) }
    else 
        render json: { message: "that didn't work"}
    end

end

def show
    game = Game.find(params[:id])
    if game
        render :json => { game: GameSerializer.new(game) }
    else 
        render :json => { message: "That didn't work"}
    end
end

private

def game_params
    params.require(:game).permit(:name, :active)
end

end
