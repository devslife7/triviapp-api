class GameSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_games

  def user_games
    ActiveModel::SerializableResource.new(object.user_games,  each_serializer: UserGameSerializer)
  end
end
