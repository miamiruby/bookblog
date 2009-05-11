class AddVersionedTables < ActiveRecord::Migration
  def self.up
    create_table :chapter_versions do |t|
      t.column :chapter_id, :integer
      t.string :title
      t.text :teaser
      t.text :body
      t.integer :position
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
      t.column :version, :integer
    end
    
    add_column :chapters, :version, :integer
  end

  def self.down
    drop_table :chapter_versions
    remove_column :chapters, :version
  end
end
