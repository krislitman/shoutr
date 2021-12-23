class DashboardsController < ApplicationController
  def show
    @shout = Shout.new
    @shouts = current_user.shouts.order_by_created_at
  end
end
