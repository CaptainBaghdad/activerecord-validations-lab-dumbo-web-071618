class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 250}
  validates :summary, length: { maximum: 250}
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
  validate :clickbait_y


  def clickbait_y
    words = [ "Won\'t Believe","Secret", "Top","Guess"]
    
   words.any? {|w| title.include?(w)}

end

end
