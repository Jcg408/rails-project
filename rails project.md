
Rails Project Checklist of Requirements
❏ A summary of the application - 
  * Luxury Day Spa online booking app. Client is able to schedule an appointment with staff for a selection of services.

❏ What will your models and associations be and why? You will need a has_many and
belongs_to relationship as well as a many to many relationship.
  * See models below - I would like to be able to query a selection of services and appointments

❏ How will you implement an Applicant submittable attribute on the join table of the many to
many relationship?
  * multiple staff and services for client to choose from

❏ What it is an ActiveRecord scope method and what is your implementation plan? 
  * Class method for retrieving and querying objects. I would like to be able to scope the most popular services/staff
❏ What validations will you have for your models?
  * has_secure_password, 
❏ How will you implement an authentication system?
  
❏ What 3rd party login service will you use?
  * Omniauth  - Google 
  
❏ With the way your models are setup what nested routes will you use

=======================================================================
Luxury Day Spa

class Staff < ApplicationRecord
  has_many :appointments
  has_many clients through: :appointments
  has_many :services
end

class StaffServices < ApicationRecord
  belongs_to :staff
  belongs_to :service
 
class Service < ApplicationRecord
  has_many :staff
  has_many :appointments
  
class Appointment < ApplicationRecord
  belongs_to :staff
  belongs_to :client
  belongs_to :service
end
 
class Client< ApplicationRecord
  has_many :appointments
  has_many staff through: :appointments
end

Client sign up with authentication. Client login with validation and option of using Omniauth - Google? Facebook?
Client has CRUD access - create appts, view appts, update appts and delete appts. Client can view personal appts.
Need form for client sign up, client login

Appointment - need form with date, times, staff available

Staff sign up and login. Staff has CRUD access. Staff can view personal appts. Scope can be used to find most popular service?
Staff will have skills attribute which can be set as categories in the form to be selected.


Want to have a dropdown list of services and prices to choose from and some kind of calendar to select date.


=====================================================================
example has many through
class Course < ActiveRecord::Base
  has_many :course_students
  has_many :students, :through => :course_students
end

class Student < ActiveRecord::Base
  has_many :course_students
  has_many :courses, :through => :course_students
end

class CourseStudent < ActiveRecord::Base
  belongs_to :student
  belongs_to :course
end
