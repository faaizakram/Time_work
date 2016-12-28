ActiveAdmin.register Tracker do
 
 filter :user
 filter :task
 filter :date


	index do
		column "Approve / Reject" do 
  link_to("Approve / Reject")
end

        total = 0
		column :user  
		column :task
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


    end
  end
end
	


