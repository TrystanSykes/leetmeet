class CreateGameInterests < ActiveRecord::Migration[5.1]
  def change
    create_table :game_interests do |t|
      t.references :user, foreign_key: true
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
