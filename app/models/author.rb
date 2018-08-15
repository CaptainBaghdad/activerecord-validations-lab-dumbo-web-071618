class Author < ActiveRecord::Base
  validates :name , presence: true, length: { minimun: 10 }
end
