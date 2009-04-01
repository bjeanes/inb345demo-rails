class AddExtraFieldsToPeople < ActiveRecord::Migration
  def self.up
    add_column :people, :latitude, :double
    add_column :people, :longitude, :double
    add_column :people, :image_url, :string
  end

  def self.down
    remove_column :people, :latitude
    remove_column :people, :longitude
    remove_column :people, :image_url
  end
end
