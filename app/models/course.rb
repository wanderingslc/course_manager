class Course < ApplicationRecord
  validates :title, :short_description, :language, :price, :level, presence: true
  validates :description, presence: true, length: {:minimum => 5}
  has_rich_text :description
  belongs_to :user
  extend FriendlyId
  friendly_id :title, use: :slugged
  def to_s 
    title 
  end

  LANGUAGES = [:"English", :"Russian", :"Polish", :"Spanish"]
  def self.languages
    LANGUAGES.map {|language| [language, language]}
  end

  LEVELS = [:"Beginner", :"Intermediate", :"Advanced"]
  def self.levels
    LEVELS.map {|level| [level, level]}
  end
end
