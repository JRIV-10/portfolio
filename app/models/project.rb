class Project < ApplicationRecord
  belongs_to :employee

  validates :name, presence: true
  validates :description, presence: true
  validates :link, presence: true
end
