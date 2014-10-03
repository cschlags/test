class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :admin, index: true
      t.string :title
      t.text :body
      t.attachment :hero

      t.timestamps
    end
  end
end
