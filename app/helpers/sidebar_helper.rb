# frozen_string_literal: true

module SidebarHelper
  def sidebar_link(name, path, _icon)
    link_to name, path
  end
end
