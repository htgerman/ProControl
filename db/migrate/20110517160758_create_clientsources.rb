class CreateClientsources < ActiveRecord::Migration
  def self.up
    create_table :clientsources do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :clientsources
  end
end
