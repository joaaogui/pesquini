=begin
File: user_controller.rb
Purpose: Contains new user method.
License: GPL v3.
Pesquini Group 6
FGA - UnB Faculdade de Engenharias do Gama - University of Brasilia.
=end
class UsersController < ApplicationController

  def new()

    @user = User.new()

  end

end
