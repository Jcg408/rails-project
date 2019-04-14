class Service < ApplicationRecord
    has_many :staff
    has_many :appointments
end
