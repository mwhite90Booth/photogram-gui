class UsersController < ApplicationController

  def index
    @user_list = User.all.order({:username => :asc})
    render({:template => "user_templates/user_index"})
  end

  def show
    @user = User.where({:username => params.fetch("username")}).at(0)
    render({:template => "user_templates/user_show"})
  end

  def insert
    user = User.new
    user.username = params.fetch("username")
    user.save
    redirect_to("/users/#{user.username}")
  end

  def update
    user = User.where({:id => params.fetch("user_id")}).at(0)
    user.username = params.fetch("updated_username")
    user.save
    redirect_to("/users/#{user.username}")
  end

end
