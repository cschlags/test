class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.references :category, index: true
      t.references :template, index: true
      t.integer :position, default: 0
      t.string :name
    end
  end
end
