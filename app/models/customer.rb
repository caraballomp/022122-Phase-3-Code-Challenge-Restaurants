
class Customer < ActiveRecord::Base
    has_many :reviews
    has_many :restaurants , through: :reviews

    def full_name
        "#{self.full_name} #{self.last_name}"
    end

    def favorite_restaurant
        self.reviews.order(:star_rating).last.restaurant
    
    end

    def add_review(restaurant, rating)

    def delete_review(restaurant)

    end

end