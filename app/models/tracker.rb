class Tracker < ApplicationRecord
	belongs_to :user

	   has_attached_file :document
     validates_attachment :document, content_type: {:content_type => %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)
     }
   
    
    
  has_attached_file :avatar, styles: { medium: "150x150#", thumb: "100x100>" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
    
  # attr_reader :date_from, :date_to
  
  # def initialize(params)
  #   params ||= {}
  #   @date_from = parsed_date(params[:date_from], 3.days.ago.to_date.to_s)
  #   @date_to = parsed_date(params[:date_to], Date.today.to_s)
  # end
  
  # def scope
  #   Tracker.where('date BETWEEN ? AND ?', @date_from, @date_to)
  # end
  
  # private
  
  # def parsed_date(date_string, default)
  #   Date.parse(date_string)
  # rescue ArgumentError, TypeError
  #   default
  # end

#To display current user name 
# <%= tracker.user.name %>
end
