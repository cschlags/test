class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string :label
      t.text :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
