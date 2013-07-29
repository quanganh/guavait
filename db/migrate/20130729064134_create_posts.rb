class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :category
      t.text :content
      t.boolean :active

      t.timestamps
    end
  end
end
