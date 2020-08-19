class UserGamesController < ApplicationController
    skip_before_action :authorized, only: [:create, :show, :update]

    def create 
        game = Game.find_by(name: params[:name])
        user = User.find_by(username: params[:username])
        usergame = UserGame.create(game_id: game.id, user_id: user.id, score: 0)
    end

    def update
        usergame = UserGame.find(params[:id])
        usergame.update(usergame_params)
    end

    private

    def usergame_params
        params.require(:usergame).permit(:score)
    end


end
