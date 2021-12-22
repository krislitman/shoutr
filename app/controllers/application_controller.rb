class ApplicationController < ActionController::Base
  include Clearance::Controller

  def user_signed_in
    if signed_in?
      redirect_to dashboard_path
    end
  end
end
