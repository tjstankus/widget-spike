class DashboardController < ApplicationController

  def index
    @widgets = RegisteredApp.all.collect { |app| Widget.new(app) }
  end

end
