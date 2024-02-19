class Entry < ApplicationRecord
    belongs_to :category
    validates :meal_type, :calories, :proteins, :carbohydrates, :fats, :category_id, presence: true

    def day
        self.created_at.strftime("%B %e, %Y")   
    end
end