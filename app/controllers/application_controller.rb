class ApplicationController < ActionController::Base
    before_action :set_paper_trail_whodunnit

    def current_group
      @current_group ||= Group.find_by(user_id: current_user.id) if user_signed_in?
    end
    helper_method :current_group
end
