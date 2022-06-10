class PagesController < ApplicationController
  def profil
    @user = current_user
  end

  def chatroom

  end
end
