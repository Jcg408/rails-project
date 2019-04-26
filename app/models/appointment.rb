class Appointment < ApplicationRecord
    belongs_to :staff 
    belongs_to :client
    belongs_to :service

    validates :date, :time, presence: true
     
end
# want to have a custome validate which catches duplicates before they are saved.

# https://jacopretorius.net/2018/05/building-custom-validators-in-rails.html https://guides.rubyonrails.org/v5.2/active_record_validations.html#custom-validators 

