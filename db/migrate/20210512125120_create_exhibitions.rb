class CreateExhibitions < ActiveRecord::Migration[6.0]
  def change
    create_table :exhibitions do |t|
      t.string :title
      t.text :artists
      t.string :institution_name
      t.string :institution_address
      t.text :curated_by
      t.text :text
      t.datetime :start_date
      t.datetime :end_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
