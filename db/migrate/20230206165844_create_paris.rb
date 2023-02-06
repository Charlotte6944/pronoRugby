class CreateParis < ActiveRecord::Migration[6.1]
  def change
    create_table :paris do |t|
      t.references :match, null: false, foreign_key: true
      t.references :joueur, null: false, foreign_key: true
      t.boolean :vainqueur_equipe1
      t.boolean :vainqueur_equipe2
      t.timestamps
    end
  end
end
