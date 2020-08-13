class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :question
      t.string :category
      t.string :difficulty
      t.string :correct
      t.string :incorrect1
      t.string :incorrect2
      t.string :incorrect3

      t.timestamps
    end
  end
end
