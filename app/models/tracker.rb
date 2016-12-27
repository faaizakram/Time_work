class Tracker < ApplicationRecord
	belongs_to :user
  has_many :subtrackers 

  accepts_nested_attributes_for :subtrackers, allow_destroy: true
    
  has_attached_file :avatar, styles: { medium: "150x150#", thumb: "100x100>" } 
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  
  validates :task, :hours, presence: true
  validates :hours, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 100 }   
  
  # attribute_der :date_from, :date_to
  
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

  def total 
    trackers.to_a.sum(&:hours)
  end
end
