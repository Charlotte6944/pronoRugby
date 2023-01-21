class CreateEquipes < ActiveRecord::Migration[6.1]
  def change
    create_table :equipes do |t|
      t.string :pays
      t.string :poule
      t.integer :nb_points_poule
      t.integer :classement_poule
      t.timestamps
    end
  end
end
