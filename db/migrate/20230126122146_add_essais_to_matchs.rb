class AddEssaisToMatchs < ActiveRecord::Migration[6.1]
  def change
    add_column :matches, :essais_equipe1, :integer, default: 0
    add_column :matches, :essais_equipe2, :integer, default: 0
  end
end
