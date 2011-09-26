class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :title
      t.text :content
      t.string :catid

      t.timestamps
    end
    add_index :posts, :catid
  end
end
