class UserGamesController < ApplicationController
    skip_before_action :authorized, only: [:create, :show, :update]

    def create
        
        game = Game.find_by(name: params[:usergame][:name])
        user = User.find_by(username: params[:usergame][:username])
        usergame = UserGame.create(game_id: game.id, user_id: user.id, score: 0)
        if usergame
            render json: { usergame: usergame }
        else 
            render json: { message: "didn't work" }
        end
    end

    def update
        usergame = UserGame.find(params[:id])
        if usergame.update(usergame_params)
            render json: { usergame: usergame}
        else 
            render json: { message: "Can't update that score!"}
        end
        
    end

    private

    def usergame_params
        params.require(:usergame).permit(:score)
    end

end
