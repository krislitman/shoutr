class DashboardsController < ApplicationController
  def show
    @shout = Shout.new
    @shouts = current_user.ordered_shouts
  end
end
