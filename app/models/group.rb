class Group < ApplicationRecord
  belongs_to :user

  has_many :activities_groups, dependent: :destroy
  has_many :activities, through: :activities_groups, dependent: :destroy

  validates :name, presence: true
  validates :icon, presence: true
end
