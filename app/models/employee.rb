class Employee < ApplicationRecord
  has_many :contacts, dependent: :destroy
  has_many :projects, dependent: :destroy
  has_many :skills, dependent: :destroy

  validates :name, presence: true
  validates :resume, presence: true
  validates :about_me, presence: true
end
