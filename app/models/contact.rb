class Contact < ApplicationRecord
  belongs_to :employee

  validates :linkedin, presence: true
  validates :github, presence: true
  validates :email, presence: true
end
