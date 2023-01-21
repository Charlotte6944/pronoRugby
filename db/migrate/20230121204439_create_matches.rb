class CreateMatches < ActiveRecord::Migration[6.1]
  def change
    create_table :matches do |t|
      t.string :phase
      t.references :equipe1, null: false, foreign_key: { to_table: :equipes }
      t.references :equipe2, null: false, foreign_key: { to_table: :equipes }
      t.date :date
      t.time :heure
      t.integer :score_equipe1
      t.integer :score_equipe2
      t.timestamps
    end
  end
end
