class Staff < ApplicationRecord
    has_many :appointments
    has_many :clients, through: :appointments
    has_many :services

    validates :name, :bio, presence: true

    def self.alphabetize
        self.order('name')
    end

   def self.booked
    self.joins(:clients).includes(:clients)
    # s.order(:appointments)
  end 
end
