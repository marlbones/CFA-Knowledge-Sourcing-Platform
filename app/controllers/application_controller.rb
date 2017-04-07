class ApplicationController < ActionController::Base
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def user_not_authorized
    # notice "You are not authorized to perform this action."
    redirect_to("/topics")
    flash[:warning] = "You are not authorized to perform this action."

    # respond_to do |format|
    #   format.html { redirect_to("/topics"), notice: "Jamie is cool" }
    # end

  end
end
