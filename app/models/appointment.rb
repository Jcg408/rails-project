class Appointment < ApplicationRecord
    belongs_to :staff 
    belongs_to :client
    belongs_to :service

    def schedule
        
    end
    
end
