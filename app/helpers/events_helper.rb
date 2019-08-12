module EventsHelper
  def current_name
    @current_user_name = session["user_name"]
  end
  def set_name(name)
    session["user_name"] = name
  end
  def remove_name(name)
    session.delete "user_name"
  end

end
