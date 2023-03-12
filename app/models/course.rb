class Course < ApplicationRecord
  include PublicActivity::Model
  extend FriendlyId

  friendly_id :title, use: :slugged
  has_rich_text :description
  tracked owner: Proc.new{ |controller, _model| controller.current_user }

  belongs_to :user

  validates :title, :description, :short_description, :language, :price, :level, presence: true

  LANGUAGES = %i[English Russian Polish Spanish].freeze
  LEVELS = %i[Beginner Intermediate Advanced].freeze

  def self.languages
    LANGUAGES.map { |language| [language, language] }
  end

  def self.levels
    LEVELS.map { |level| [level, level] }
  end

  def to_s
    title
  end
end
