class UsersController < ApplicationController


	def contact
    @title = "Contact"
    @user = ''
    @subject = ''
    @message = ''
  end

  def sendmail
    @user = User.find_by_email(current_resident.email)
    @subject = params[:subject]
    @message = params[:message]
      if @user&& @subject&& @message
        UserMailer.complaint_email(@user, @subject, @message).deliver      
        redirect_to zipcode_path(@user.zipcode.id)
      else
        redirect_to zipcode_path
      end
  end
	
end
