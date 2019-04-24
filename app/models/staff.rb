class Staff < ApplicationRecord
    has_many :appointments
    has_many :clients, through: :appointments
    has_many :services

    def self.alphabetize
        Staff.all.sort_by {|staff| staff.name}
    end
end
