class GamesController < ApplicationController

def create

end

private

def game_params
    params.permit(:name, :users)
end

end
