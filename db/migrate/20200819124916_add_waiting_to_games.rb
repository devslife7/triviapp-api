class AddWaitingToGames < ActiveRecord::Migration[6.0]
  def change
      add_column :games, :waiting, :boolean
  end
end
