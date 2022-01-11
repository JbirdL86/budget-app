class Group < ApplicationRecord
  belongs_to :user
  belongs_to :activity

  has_many :activities, dependent: :destroy

  validates :name, presence: true
  validates :icon, presence: true
end
