class Stat < ApplicationRecord
  belongs_to :user
  # needs to have default values of the types of intelligence and also has a number between 0 and 100 
  
end
