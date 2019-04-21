class Service < ApplicationRecord
    has_many :staffs
    has_many :appointments

    accepts_nested_attributes_for :appointments, :staffs
    

    

   
end
