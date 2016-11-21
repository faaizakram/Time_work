ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
 end

 columns do

   column do
       panel "Todays Tasks" do
        table_for Tracker.order("created_at DESC").limit(5) do
            column :task do |tracker|
                link_to tracker.task, [:admin, Tracker]
            end
            column :hours
            column :time
            
        end
        strong {link_to "View All Tasks", admin_trackers_path}
    end
  end    

   column do
        panel "Recent Customers" do
          table_for User.order('id desc').limit(5).each do |user|
            column(:email)  {|user| link_to(user.email, admin_user_path(user)) }
          end
        end
      end
end
    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
