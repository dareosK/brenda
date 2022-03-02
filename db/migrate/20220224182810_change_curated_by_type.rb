class ChangeCuratedByType < ActiveRecord::Migration[6.0]
  def change
    change_column :exhibitions, :curated_by, :string
  end
end
