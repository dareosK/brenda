class ChangeExhibitionAritstsDatatype < ActiveRecord::Migration[6.0]
  def change
    change_column :exhibitions, :artists, :string
  end
end
