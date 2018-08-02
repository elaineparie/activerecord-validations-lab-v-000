class Post < ActiveRecord::Base

  validate :title_must_be_clickbait

  def title_must_be_clickbait
    if title.include?("Won't Believe") || title.include?("Secret") || title.include?("Top [number]") || title.include?("Guess")
    end
  end


  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction Nonfiction)}
  validates :title, title_must_be_clickbait: true

end
