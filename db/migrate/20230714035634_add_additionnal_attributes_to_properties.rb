class AddAdditionnalAttributesToProperties < ActiveRecord::Migration[7.0]
  def change
    add_column :properties, :bathrooms, :integer, default: 0
    add_column :properties, :rooms, :integer, default: 0
    add_column :properties, :chicken, :integer, default: 0
  end
end
