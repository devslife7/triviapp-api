class UserGameSerializer < ActiveModel::Serializer
  attributes :id, :user

  def user
    ActiveModel::SerializableResource.new(object.user,  each_serializer: UserSerializer)
  end
end
