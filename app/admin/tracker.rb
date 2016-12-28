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
        column("Subtask Hours") {|resource| total = total + resource.total}
	    column :"Date", :created_at
	    actions
	    div :class => "panel" do
	        h3 "Total: #{total}"
	     end
	 #   # #  column :Subtrackers do |i|
	 #   # #  columns  i.subtrackers.status
	 #   # # end  
     # end
  
end
	

end
	


