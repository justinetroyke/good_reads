class Review < ApplicationRecord
  validates :words, :presence => true
  belongs_to :book
end
