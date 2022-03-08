class AddSlugToExhibitions < ActiveRecord::Migration[6.0]
  def change
    add_column :exhibitions, :slug, :string
    add_index :exhibitions, :slug, unique: true
  end
end
