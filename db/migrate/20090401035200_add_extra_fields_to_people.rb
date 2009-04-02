class AddExtraFieldsToPeople < ActiveRecord::Migration
  def self.up
    add_column :people, :latitude, :float
    add_column :people, :longitude, :float
    add_column :people, :image_url, :string
  end

  def self.down
    remove_column :people, :latitude
    remove_column :people, :longitude
    remove_column :people, :image_url
  end
end
