module ApplicationHelper
  def page_title
    "#{controller_name}/#{action_name}"
  end
end
