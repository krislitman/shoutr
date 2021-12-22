class HomeController < ApplicationController
  before_action :check_authentication

  def show
    render
  end

  private

  def check_authentication
    user_signed_in
  end
end
