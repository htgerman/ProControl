class CreateGarmenttypes < ActiveRecord::Migration
  def self.up
    create_table :garmenttypes do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :garmenttypes
  end
end
