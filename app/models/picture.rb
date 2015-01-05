class Picture < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  validates :name, length: { minimum: 3, maximum: 150 }
end
