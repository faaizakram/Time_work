class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :project
  attribute :task
  attribute :status
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Daily work update",
      :to => "faiz2.techflux@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
