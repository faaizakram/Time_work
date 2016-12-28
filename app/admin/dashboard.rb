ActiveAdmin.register_page "Dashboard" do
  menu :priority => 1
  content :title => proc{ I18n.t("active_admin.dashboard") } do

    columns do

      column do
        panel "Recent Tasks" do
          table_for Tracker.order('id desc').limit(5) do
            column :user
            column :task 
            column :hours
            column :"Date", :created_at

       end
      end
    end
    

   column do
         panel "Graph" do
           render 'graph' # => this will render /app/views/admin/dashboard/_recent_posts.html.erb
    end
 end
     # => this will render /app/views/admin/dashboard/_recent_posts.html.erb
    

      # column do
      #   div do
      #     br
      #     # text_node %{<iframe src="https://rpm.newrelic.com/public/charts/6VooNO2hKWB" width="500" height="300" scrolling="no" frameborder="no"></iframe>}.html_safe
      #   end
      # end


      # column do
      #   panel "Recent Customers" do
      #     table_for User.order('id desc').limit(10).each do |customer|
      #       column(:email)    {|customer| link_to(tracker.email, admin_tracker_path(tracker)) }
      #     end
      #   end
      # end
 end
    # end # columns

    # columns do

    
    #   column do
    #     panel "ActiveAdmin Demo" do
    #       div do
    #         render('/admin/sidebar_links', :model => 'dashboard')
    #       end
    #     end
    #   end
    end
  end # columns

