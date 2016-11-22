ActiveAdmin.register Tracker do

filter :user
filter :task
filter :date


index do
	column :user  
	column :task
	column :hours
    column :"Date", :created_at
    column :running_total
    actions  
  end	 


end
