class User < ApplicationRecord
 has_secure_password 
 has_secure_password :recovery_password, validations: false
 has_many :reading_lists
 has_many :stats
 validates :name, presence: true
 validates :my_email_attribute, email: true
 has_one :currently_reading_list, dependent: :destroy
 validates_confirmation_of :password
 attr_accessor :password_confirmation

 



end
