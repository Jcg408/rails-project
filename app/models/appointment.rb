class Appointment < ApplicationRecord
    belongs_to :staff 
    belongs_to :client
    belongs_to :service

    validates :date, :time, presence: true

    def self.date_sort
        self.order(:date)
    end
end
