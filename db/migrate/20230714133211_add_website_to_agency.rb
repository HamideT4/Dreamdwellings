class AddWebsiteToAgency < ActiveRecord::Migration[7.0]
  def change
    add_column :agencies, :website, :string
  end
end
