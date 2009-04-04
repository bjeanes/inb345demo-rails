class Person < ActiveRecord::Base
  set_primary_key :person_id
  belongs_to :group
  
  validates_presence_of :first_name, :last_name, :group_id, :state, :post_code, :country, :address, :city

  named_scope :search, lambda { |search| { :conditions => ["first_name LIKE :search OR last_name LIKE :search", {:search => "%#{search}%"}] } }

  def name
    "#{first_name} #{last_name}"
  end
end
