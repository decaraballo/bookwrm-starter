class User < ApplicationRecord
	has_many :reviews
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         def full_name
   return 'Anonymous' unless (first_name && last_name)      	
first_name + " " + last_name
end

def initials
	return 'AN' unless (first_name && last_name)
	first_name.try(:first) + '.' + last_name.try(:first) + '.'
end
end
