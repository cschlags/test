class CreateInstallations < ActiveRecord::Migration
  def change
    create_table :installations do |t|
      t.string :label
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
