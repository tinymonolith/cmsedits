class CreateRepertoires < ActiveRecord::Migration
  def self.up
    create_table :repertoires do |t|
      t.string :composer
      t.string :title
      t.string :audio_file_name
      t.string :audio_content_type
      t.integer :audio_file_size
      t.datetime :audio_updated_at 

      t.timestamps
    end
  end

  def self.down
    drop_table :repertoires
  end
end
