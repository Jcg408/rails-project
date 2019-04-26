class Appointment < ApplicationRecord
    belongs_to :staff 
    belongs_to :client
    belongs_to :service

    validates :date, :time, presence: true
     
    # custom validation for duplicate appointment.

    # validate :appt_dupe

    #     def appt_dupe
    #         Appointment.all.each do |appt|
    #             if appt.attributes == @appointment
    #                 errors.add(:staff_id, "Staff booked") 
    #             end
    #         end
    #     end

end

# https://jacopretorius.net/2018/05/building-custom-validators-in-rails.html https://guides.rubyonrails.org/v5.2/active_record_validations.html#custom-validators 


# def not_a_repeat  
#     if Visit.where(user_id: user_id, city_id: city_id).count > 0    
#         errors.add(:city_id, "You have already entered this visit")   
#     end
# end 