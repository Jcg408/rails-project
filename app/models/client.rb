class Client < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true
    validates :email, uniqueness: true

    has_many :appointments
    has_many :staff, through: :appointments

    has_secure_password
end
