class CreateAttributes < ActiveRecord::Migration
  def change
    create_table :attributes do |t|
      t.references :section, index: true
      t.string :name
      t.text :value
    end
  end
end
