class DashboardController < ApplicationController

  def index
    @widget = Widget.new(RegisteredApp.first)
  end

end
