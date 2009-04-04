class Group < ActiveRecord::Base
  set_primary_key :group_id
  has_many :people
  
  validates_presence_of :name, :color
  
  def to_s
    name
  end
end
