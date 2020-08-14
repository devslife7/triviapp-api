class GamesController < ApplicationController

def create
    game=

end

private

def game_params
    params.permit(:name, :users)
end

end
