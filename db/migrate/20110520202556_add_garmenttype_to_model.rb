class AddGarmenttypeToModel < ActiveRecord::Migration
  def self.up
    add_column :garmentmodels, :garmenttype_id, :integer
    add_column :garmentmodels, :shortdescription, :string
  end

  def self.down
    remove_column :garmentmodels, :garmenttype_id
    remove_column :garmentmodels, :shortdescription
  end
end
