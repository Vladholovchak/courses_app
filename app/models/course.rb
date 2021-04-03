class Course < ApplicationRecord
  validates :title, :description, presence: true
  has_rich_text :description
  belongs_to :user

  def to_s
    title
  end
end
