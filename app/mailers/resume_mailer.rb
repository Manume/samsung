class ResumeMailer < ActionMailer::Base
  default from: 'notifications@example.com'
 
  def resume_email(carrier)
    @carrier = carrier
    @url  = 'http://samsunng.com/message'
    @to = 'manu.ideology@gmail.com'
    mail(to: @to, subject: 'Welcome to My Awesome Site')
  end
end
