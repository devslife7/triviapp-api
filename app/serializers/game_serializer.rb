class GameSerializer < ActiveModel::Serializer
  attributes :id, :name, :active, :waiting, :user_games, :questions

  def user_games
    ActiveModel::SerializableResource.new(object.user_games,  each_serializer: UserGameSerializer)
  end
end
