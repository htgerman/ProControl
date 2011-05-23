class CreateNotes < ActiveRecord::Migration
  def self.up
    create_table :notes do |t|
      t.string :title
      t.text :content
      t.integer :noteable_id
      t.string :noteable_type
      t.string :att_file_name
      t.string :att_content_type
      t.integer :att_file_size
      t.datetime :att_updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :notes
  end
end
