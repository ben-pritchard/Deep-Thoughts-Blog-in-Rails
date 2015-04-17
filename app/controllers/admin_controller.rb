class AdminController < ApplicationController
  def toggle
    if current_user.admin
      current_user.admin = false
    else
      current_user.admin = true
    end
    current_user.save
    redirect_to :back
  end
end
