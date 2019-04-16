class Service < ApplicationRecord
    has_many :staffs
    has_many :appointments

end
