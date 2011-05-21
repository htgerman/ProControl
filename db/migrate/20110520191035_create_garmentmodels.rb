class CreateGarmentmodels < ActiveRecord::Migration
  def self.up
    create_table :garmentmodels do |t|
      t.string :name
      t.text :description
      t.string :shortdescription
      t.float :price
      t.integer :garmenttype_id

      t.timestamps
    end
  end

  def self.down
    drop_table :garmentmodels
  end
end
