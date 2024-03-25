class MainController < ApplicationController
  def home
    @users = User.order(created_at: :desc)
  end

  def index
    @sections = Section.all
  end
end
