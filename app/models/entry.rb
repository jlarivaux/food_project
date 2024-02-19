class Entry < ApplicationRecord
    validates :meal_type, :calories, :proteins, :carbohydrates, :fats, presence: true

    def day
        self.created_at.strftime("%B %e, %Y")   
    end
end