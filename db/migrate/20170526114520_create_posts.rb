class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.text :content, null: false 
      t.references :users, foreign_key: true, null: false 
      t.timestamps
    end
  end
end