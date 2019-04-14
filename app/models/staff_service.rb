class StaffService < ApplicationRecord
    belongs_to :staff
    belongs_to :appointments
end
