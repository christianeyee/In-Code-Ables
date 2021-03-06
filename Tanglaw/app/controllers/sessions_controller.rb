class SessionsController < ApplicationController
  def new
  end

  def create

  	user = User.find_by(username: params[:session][:username].downcase)
    # binding.pry
    if user# && user.authenticate(params[:session][:password])
		log_in user
    	redirect_to researches_path
      # Log the user in and redirect to the user's show page.
    else
      # Create an error message.
      flash[:danger] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
