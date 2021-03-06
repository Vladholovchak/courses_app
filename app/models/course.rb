class Course < ApplicationRecord
  validates :title, :description, :short_description, :language, :price, :level, presence: true
  has_rich_text :description
  belongs_to :user

  extend FriendlyId
  friendly_id :title, use: :slugged

  def to_s
    title
  end
end
