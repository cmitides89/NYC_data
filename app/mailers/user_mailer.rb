class UserMailer < ActionMailer::Base
  default from: "kbajorin@example.com"

  # def complaint_email(user)
  #   @user = user
  #   @url  = "http://example.com/zipcodes"
  #   mail(:to => user.email, :subject => "You Suck")   
  # end
    def complaint_email(user, subject, message, sent_at = Time.now)
  
    @user = user
    @message = message
    @subject = subject
    @sent_at = sent_at.strftime("%B %e, %Y at %H:%M")
    mail(:to => 'nycdataproject@gmail.com',:subject => @subject, :message => @message)   
  end


end
