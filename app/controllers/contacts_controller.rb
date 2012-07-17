class ContactsController < ApplicationController
  def new
  end

  def show
    @user = User.find_by_id(params[:id])

    # If user not found
    if @user.nil?
      redirect_to root_path , :notice => "User not found"
    else
      respond_to do |format|
        format.html
        format.xml { render :xml  => @user }
        format.json{ render :json => @user }
      end
    end
  end

  def delete
  end

  def update
  end

  def index
  end
end
