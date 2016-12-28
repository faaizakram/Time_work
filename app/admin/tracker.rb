ActiveAdmin.register Tracker do
 
 filter :user
 filter :task
 filter :date


	index do
<<<<<<< HEAD
	# 	column "Approve / Reject" do 
 #  link_to("Approve / Reject")
 # end
=======
		column "Approve / Reject" do 
  link_to("Approve / Reject")
end
>>>>>>> 009768c11490f0b56a250f347770391d81542793

        total = 0
		column :user  
		column :task
<<<<<<< HEAD
		column("Subtask Hours") {|resource| total = total + resource.total}
	    column :"Date", :created_at
	   
          actions
	    div :class => "panel" do
	       h3 "Total: #{total}"
	    end
	   # #  column :Subtrackers do |i|
	   # #  columns  i.subtrackers.status
	   # # end  
    # end
  
  end
end
	
=======
		column :subtask
		column :hours
	    column :"Date", :created_at
	    column("sub amount") {|resource| total = total + resource.total}
         actions
	    div :class => "panel" do
	      h3 "Total: #{total}"
	    end
	   #  column :Subtrackers do |i|
	   #  columns  i.subtrackers.status
	   # end  


  form do |f|
  	f.input do
  		f.input :task
  	end
   
   f.input "Subtasks" do
   	f.input :subtrackers do |j|
     j.input :task, :subtask
    end
 end
>>>>>>> 009768c11490f0b56a250f347770391d81542793


    end
  end
end
	


