class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 250}
  validates :summary, length: { maximum: 250}
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
  validate :clickbait

  ans = title
  def clickbait
    words = [ "Won\'t Believe","Secret", "Top","Guess"]
    puts "This is the ans #{ans}"
    
   words.any? {|w| title.include?(w)}

end

end