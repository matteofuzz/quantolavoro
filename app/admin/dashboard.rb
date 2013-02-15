ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }



  content :title => proc{ I18n.t("active_admin.dashboard") } do
    columns do

      column do
        panel "Open Projects Summary" do
          ul do
            Project.not_closed.map do |project|
              li link_to "#{project.name} (#{minutes_as_hm(project.total_time)})", admin_project_path(project)
            end
          end
        end
      end

      column do
        panel "Today's works #{minutes_as_hm(Work.where(:workday => Date.today).sum(&:worktime))}" do
          ul do
            Work.where(:workday => Date.today).map do |work|
              li "#{work.project ? work.project.name : '-'}: #{minutes_as_hm(work.worktime)}, #{work.note.truncate(30)} #{'['+work.feature.name.to_s+']' if work.feature}"
            end
          end
        end
      end

      column do
        panel "Insert a new work" do
          render "admin/works/form"
        end
      end

    end

    #   div :class => "blank_slate_container", :id => "dashboard_default_message" do
    #     span :class => "blank_slate" do
    #       span I18n.t("active_admin.dashboard_welcome.welcome")
    #       small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #     end
    #   end

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
