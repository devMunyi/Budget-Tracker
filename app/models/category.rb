class Category < ApplicationRecord
  include ImageUploader::Attachment(:icon)

  belongs_to :author, class_name: 'User'
  has_many :category_expenses, dependent: :destroy
  has_many :expenses, through: :category_expenses, dependent: :destroy

  # validations
  validates :name, presence: true

  def format_date(time_with_zone)
    time_with_zone.strftime('%d %b %Y')
  end
end
