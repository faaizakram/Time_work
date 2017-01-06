class Subtracker < ApplicationRecord
  belongs_to :tracker
  belongs_to :user
  # def total_hrs
  #   self.subtracker.sum(:hours)
  # end
 
end
