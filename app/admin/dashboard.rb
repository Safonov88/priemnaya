ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Абитуриентов на кафедрах" do
          render "admin/department"
        end
      end

      column do
        panel "Абитуриентов в группах" do
          render "admin/group"
        end
      end
    end

    columns do
      column do
        panel "Даты экзаменов" do
          render "admin/exam"
        end
      end

      column do
        panel "Оценки" do
          render "admin/assessment"
        end
      end
    end
  end
end
