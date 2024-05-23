class Skill < ApplicationRecord
  belongs_to :employee

  validates :primary_lang, presence: true
  validates :framework, presence: true
  validates :learning, presence: true
end
