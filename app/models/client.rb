class Client < ApplicationRecord
     has_secure_password

    validates :name, presence: true 
    validates :email, presence: true
    validates :email, uniqueness: true
    
    has_many :appointments
    has_many :staffs, through: :appointments

   
end
