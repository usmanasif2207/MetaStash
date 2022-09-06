class Feedback < ApplicationRecord
  belongs_to :user


  scope :resolved, -> { where(is_resolved: :true)}
  scope :not_resolved, -> { where(is_resolved: :false)}
end
