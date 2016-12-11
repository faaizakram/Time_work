ActiveAdmin.register Tracker do
 
 filter :user
 filter :task
 filter :date


	index do
		column :user  
		column :task
		column :hours
		column :flag
	    column :"Date", :created_at
	   #  column :Subtrackers do |i|
	   #  columns  i.subtrackers.status
	   # end  
	
	    actions 
	   end
    
    
    
   
           
   
 end

