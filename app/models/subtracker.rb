class Subtracker < ApplicationRecord
  belongs_to :tracker

	
	def total
    self.Subtracker.sum(&:hours)
  end

end
