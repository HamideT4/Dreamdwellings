class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.references :agency
      t.string :title
      t.string :categorie
      t.string :status
      t.text :description
      t.decimal :price
      t.string :localisation
      t.string :photo

      t.timestamps
    end
  end
end
