class AddLogoToGames < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :logo, :string
  end
end
