class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :body
      t.string :tagline
      t.date :date
      t.string :author

      t.timestamps
    end
  end
end
