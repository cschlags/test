class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.attachment :logo

      t.timestamps
    end
  end
end
