class ApplicationController < ActionController::Base

    def current_user
        @current_user ||= User.find_by_id(session[:user_id])
        # if @current_user is already defined, it will equal @current_user.
        # otherwise it will find a @current_user by searching through the sessions hash
        # MEMOIZATION
    end


    def logged_in?
        !!@current_user
    end

    def redirect_if_not_logged_in
        redirect_to '/' if !logged_in?
    end
end
