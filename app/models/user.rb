class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :validatable, :trackable
  has_many :courses, dependent: :destroy

  def username
    email.split(/@/).first
  end

  def to_s
    email
  end
end
