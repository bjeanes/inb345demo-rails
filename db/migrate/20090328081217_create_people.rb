class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people, :primary_key => "person_id" do |t|
      t.string :first_name
      t.string :last_name
      t.references :group
      t.string :post_code
      t.string :country
      t.string :address
      t.string :city

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
