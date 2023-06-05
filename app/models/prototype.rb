class Prototype < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy
  
  validates :title, presence:true
  validates :catch_copy, presence:true
  validates :image, presence: true, unless: :was_attached?

  private
  def was_attached?
    self.image.attached?
  end
end
