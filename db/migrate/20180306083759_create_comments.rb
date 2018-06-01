class CreateComments < ActiveRecord::Migration[5.1]
  def change
  	create_table :comments do |t|
      t.string :email
      t.references :article, foreign_key: true
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
