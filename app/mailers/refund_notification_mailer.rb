class RefundNotificationMailer < ApplicationMailer

  def customer_refund_notification(refund)
    @refund = refund
    @booking = refund.booking
    @customer = refund.customer
    @event = @booking.event
    @refundable_amount = @refund.number_of_tickets * @event.entrance_fee
    mail to: @customer.email, subject: "Refund accepted for #{@event.name}"
  end

  def admin_refund_notification(refund)
    @refund = refund
    @booking = refund.booking
    @customer = refund.customer
    @event = @booking.event
    @refundable_amount = @refund.number_of_tickets * @event.entrance_fee
    mail to: AdminUser.first.email, subject: "Refund request for #{@event.name}"

  end
end
