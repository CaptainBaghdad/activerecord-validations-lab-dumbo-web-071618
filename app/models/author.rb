class Author < ActiveRecord::Base
  validates :name , presence: true, length: { in: 10 }
end
