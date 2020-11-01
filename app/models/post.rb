class Post < ActiveRecord::Base

    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
    # validate :clickbait,

    # def clickbait
    #     arr = ["Won't Believe, Secret, Top [number], Guess"]
    #     if !self.title.include? arr == false
    #         errors.add(:title, "must be sufficiently clickbait-y")
    #     end 
    # end

end
