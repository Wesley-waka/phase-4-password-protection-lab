class ApplicationRecord < ActiveRecord::Base
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  self.abstract_class = true
end
