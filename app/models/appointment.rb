class Appointment < ApplicationRecord
    belongs_to :staff 
    belongs_to :client
    belongs_to :service

    validates :date, :time, presence: true

end
