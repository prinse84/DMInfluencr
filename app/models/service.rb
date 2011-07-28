class Service < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name
  
  has_many :registrations
  has_many :persons, :through => :registrations
  
end
