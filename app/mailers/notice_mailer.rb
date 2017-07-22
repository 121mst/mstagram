class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_pct.subject
  #
  def sendmail_pct(pct)
    @pct = pct

    mail to: "m121mst@yahoo.co.jp",
      subject: '【Mstgram】投稿されました'
  end
end
