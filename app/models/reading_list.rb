class ReadingList < ApplicationRecord
  belongs_to :user
  has_many :books

  # creating different types of reading list. 
  # 2 default types currently reading and to-read list.

  
end
