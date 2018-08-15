class Author < ActiveRecord::Base
  validates :name , presence: true, length: { minimun: 10 }
   validates :phone_number , presence: true, length: { minimun: 10 }
end
