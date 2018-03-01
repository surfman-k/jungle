class UserMailer < ApplicationMailer
  default from: 'no-reply@jungle.com'
 
  def order_email(email, orderid)
    mail(to: email, subject: "Order ##{orderid}, Thank you for ordering with Jungle!")
  end
end
