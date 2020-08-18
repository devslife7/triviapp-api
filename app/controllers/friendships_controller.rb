class FriendshipsController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    user = User.find_by( id: friendship_params[:user_id])
    friend = User.find_by( id: friendship_params[:friend_id] )

    friendship = user.friendships.build(:friend_id => friendship_params[:friend_id])
    friendship2 = friend.friendships.build(:friend_id => user.id)

    if friendship.save && friendship2.save
      render json: { message: 'friend added' }, status: :created
    else
      render json: { error: 'didnt accept friend request'}, status: :not_acceptable
    end
  end

  private

  def friendship_params
    params.require(:friendship).permit(:friend_id, :user_id)
  end

end
