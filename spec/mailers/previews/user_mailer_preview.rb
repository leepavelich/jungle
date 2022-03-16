# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  def order_confirmation
    order = Order.first
    UserMailer.order_confirmation(order)
  end
end