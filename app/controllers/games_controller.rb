class GamesController < ApplicationController
    skip_before_action :authorized, only: [:create, :show, :update, :index]


def index
    games = Game.where("waiting = true")

    render json: { games: games }
end

def create
    game = Game.new(game_params)

    game.questions << Question.all.sample(10)
    
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

def update
    game = Game.find(params[:id])
    if game.update(game_params)
        render :json => {game: GameSerializer.new(game)}
    else
        render :json => { message: "patch didn't work"}
    end
end

private

def game_params
    params.require(:game).permit(:name, :active, :waiting)
end

end
