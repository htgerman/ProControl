class CreateGarmentmodels < ActiveRecord::Migration
  def self.up
    create_table :garmentmodels do |t|
      t.string :name
      t.text :description      
      t.float :price      

      t.timestamps
    end
  end

  def self.down
    drop_table :garmentmodels
  end
end
