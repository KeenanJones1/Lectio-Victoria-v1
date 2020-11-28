class User < ApplicationRecord
 has_secure_password
 has_many :reading_list
 has_many :stats

 validates :name, presence: true
end
