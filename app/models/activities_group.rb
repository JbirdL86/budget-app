class ActivitiesGroup < ApplicationRecord
  belongs_to :group
  belongs_to :activity
end