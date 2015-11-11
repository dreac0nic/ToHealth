class LoginController < ApplicationController

  def new
    @login = User.new
  end

end
