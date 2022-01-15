class Activity < ApplicationRecord
  belongs_to :user, foreign_key: :author_id

  has_many :activities_groups, dependent: :destroy
  has_many :groups, through: :activities_groups, dependent: :destroy

  validates :name, presence: true
  validates :amount, presence: true
end
