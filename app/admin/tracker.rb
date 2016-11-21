ActiveAdmin.register Tracker do

filter :user
filter :task
filter :date


index do
	column :user  
	column :task
	column :hours
    column :"Date", :time
    column :total
    actions  
  end	 
end
