class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_blog.subject
  #
  def sendmail_blog
   @blog = blog
   
    mail to: "aws-tatsuki-rst.b22862@ezweb.ne.jp"
       subject:'[Achieve] ブログが投稿されました'
  end
end
