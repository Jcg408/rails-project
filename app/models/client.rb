class Client < ApplicationRecord
     has_secure_password

    validates :name, :email, presence: true 
    validates :email, uniqueness: true
    
    has_many :appointments
    has_many :staffs, through: :appointments

    accepts_nested_attributes_for :appointments

    def self.appts_admin
      joins(:appointments).order(:date).pluck(:name, :date)
    end
end
