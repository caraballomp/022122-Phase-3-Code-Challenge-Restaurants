class Restaurant < ActiveRecord::Base
    has_many :reviews
    has_many :customers, through: :reviews

    def restaurant.fanciest
    
    end

    def all_reviews
        self.reviews.map(&:review)
    end
end