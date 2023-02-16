class CategoryExpense < ApplicationRecord
  validates :expense, uniqueness: { scope: :category, message: 'already exists in this category' }

  # associations
  belongs_to :expense
  belongs_to :category
end
