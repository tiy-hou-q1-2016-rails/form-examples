class Book < ActiveRecord::Base
  belongs_to :author

  validates :title, :author, presence: true
  validates :year, numericality: {greater_than_or_equal_to: 1900, less_than_or_equal_to: Date.today.year, only_integer: true}
end
