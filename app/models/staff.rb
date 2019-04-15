class Staff < ApplicationRecord
    validates :name, presence: true

    has_many :appointments
    has_many :clients, through: :appointments
    has_many :services
end
