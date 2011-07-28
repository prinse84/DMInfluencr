class Registration < ActiveRecord::Base
  validates_uniqueness_of  :service_id, :scope => 'person_id', :message => "User already setup for this service"
    
  belongs_to :person
  belongs_to :service
end
