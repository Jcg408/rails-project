class Client < ApplicationRecord
     has_secure_password

    has_many :appointments
    has_many :staff, through: :appointments

    validates :name, presence: true 
    validates :email, presence: true
    validates :email, uniqueness: true
end
