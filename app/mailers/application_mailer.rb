class ApplicationMailer < ActionMailer::Base

	default from: "faiz2.techflux@gmail.com"
  
  def confirmation_instructions(record)
    devise_mail(record, :confirmation_instructions)
  end

  def reset_password_instructions(record)
    devise_mail(record, :reset_password_instructions)
  end

  def unlock_instructions(record)
    devise_mail(record, :unlock_instructions)
  end

end
