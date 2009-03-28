class Group < ActiveRecord::Base
  has_many :people
  
  validates_presence_of :name, :color
  
  def to_s
    name
  end
end
