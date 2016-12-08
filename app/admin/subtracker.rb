ActiveAdmin.register Subtracker do

filter :user
filter :subtask

index do
	
	column :tracker do |deal|
     link_to deal.tracker.task
     end
	column :user  
	column :subtask
	column :hours
	column :status
    
	
 
  end
     
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end

