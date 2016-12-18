class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def get_current_user
    @current_user = User.find_by(id: session[:user_id])

    if @current_user == nil
      @name = "Helper"
    else
      @name = @current_user.first_name
    end
  end
  
    def check_if_logged_in
      if session[:user_id] == nil
        flash[:need_to_login_message] = "You need to login to see the profile page."
        redirect_to "/login"
    end
  end

  def check_if_admin
    if @current_user == nil
      get_current_user
    end

    if @current_user && @current_user.role != "admin"
    flash[:admin_only] = "Only administrators can see users"
    redirect_to "/"
  end
end
end
