class Client < ApplicationRecord
    has_many :appointments
    has_many :staff, through: :appointments
end
