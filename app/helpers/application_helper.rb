module ApplicationHelper
  def active?(path)
    "active" if current_page?(path)
  end

  def login_helper
    # style
    if !logged_in?(:user) || !logged_in?(:admin)

      (link_to "Register",new_user_registration_path) +
      " ".html_safe +
      (link_to "Login", new_user_session_path)
    else

      link_to "Logout", destroy_user_session_path, method: :delete
    end
  end

  def nav_items
    [
      {
        url: root_path,
        title: 'Published'
      },
      {
        url: pages_draft_path,
        title: 'My Work'
      },
      {
        url: posts_path,
        title: 'Index'
      }
    ]
  end

  def nav_helper style, tag_type
    nav_links = ''

    nav_items.each do |item|
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style}'>#{item[:title]}</a></#{tag_type}>"
    end

    nav_links.html_safe
  end
end
# class='#{style} #{active? item[:url]}
