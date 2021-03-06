ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    # div class: "blank_slate_container", id: "dashboard_default_message" do
    #   span class: "blank_slate" do
    #     span I18n.t("active_admin.dashboard_welcome.welcome")
    #     small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #   end
    # end

    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do
      column do
        panel "ブログ記事" do
          ul do
            Post.all.each do |post|
              li link_to(post.title, admin_post_path(post))
            end
          end
        end
       end
       
       column do
          panel "インタビュー記事" do
            ul do
              Interview.all.each do |int|
                li link_to(int.name, admin_interview_path(int))
              end
            end
          end
        end
        
        column do
          panel "ユーザー" do
            ul do
              User.all.each do |usr|
                li link_to(usr.name, admin_user_path(usr))
              end
            end
          end
        end
       
        column do
          panel "レビュー" do
            ul do
              Feedback.all.each do |feed|
                li link_to(feed.description, admin_feedback_path(feed))
              end
            end
          end
        end
       
     end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
