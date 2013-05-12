class UserMailer < ActionMailer::Base
  default from: "kbajorin@example.com"

  def complaint_email(user)
    @user = user
    @url  = "http://example.com/zipcodes"
    mail(:to => user.email, :subject => "You Suck")   
  end

end
