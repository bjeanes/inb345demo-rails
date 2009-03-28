class Person < ActiveRecord::Base
  belongs_to :group
  
  validates_presence_of :first_name, :last_name, :group_id, :post_code, :country, :address, :city

  def name
    "#{first_name} #{last_name}"
  end
end
