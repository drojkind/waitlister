module ApplicationHelper
  def login_nav
    nav = ""

    if @auth.present?
      nav = "<li>#{link_to("Reservations", reservations_path)}</li>"
      nav += "<li>#{link_to("Stats", timechart_users_path)}</li>"
      nav += "<li>#{link_to(@auth.email, login_path, :method => :delete, remote: true)}</li>"

    else
      nav += "<li>#{link_to('Register', "#", remote: true, :'data-reveal-id' => 'myModal2')}</li>"
      nav += "<li>#{link_to('Login', '#', remote: true, :'data-reveal-id' => 'myModal')}</li>"
    end
  end
end
