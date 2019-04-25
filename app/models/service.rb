class Service < ApplicationRecord
    has_many :staffs
    has_many :appointments

    validates :name, presence: true

    accepts_nested_attributes_for :appointments, :staffs
end
