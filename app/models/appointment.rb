class Appointment < ApplicationRecord
    belongs_to :staff 
    belongs_to :client
    belongs_to :service

    validates_presence_of :date
    validates_presence_of :time
    validates_presence_of :staff_id
    validates_presence_of :service_id
     
end