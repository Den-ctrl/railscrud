class MainController < ApplicationController
  def home
  end

  def index
    @sections = Section.all
  end
end
