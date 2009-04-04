class CreateGroups < ActiveRecord::Migration
  def self.up
    create_table :groups, :primary_key => "group_id" do |t|
      t.string :name
      t.string :color

      t.timestamps
    end
  end

  def self.down
    drop_table :groups
  end
end
