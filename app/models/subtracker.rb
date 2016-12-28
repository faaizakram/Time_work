class Subtracker < ApplicationRecord
  belongs_to :tracker
  belongs_to :user
  # def total_hrs
  #   self.subtracker.sum(:hours)
  # end
 def total 
    trackers.to_a.sum(&:hours)
  end
  
end
