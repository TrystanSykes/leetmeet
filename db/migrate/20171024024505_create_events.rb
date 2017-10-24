class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :location
      t.references :game, foreign_key: true
      t.references :category, foreign_key: true
      t.text :about
      t.boolean :active

      t.timestamps
    end
  end
end
