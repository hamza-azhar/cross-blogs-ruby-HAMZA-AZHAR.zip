class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :email
      t.string :title
      t.text :content
      t.datetime :date
      t.boolean :published

      t.timestamps
    end
  end
end
