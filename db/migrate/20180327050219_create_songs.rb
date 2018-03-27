class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.integer :rank
      t.string :song
      t.string :artist
      t.integer :year
      t.string :lyrics
      t.integer :source
    end
  end
end
