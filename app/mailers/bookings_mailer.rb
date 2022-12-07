class BookingsMailer < ApplicationMailer
  def booking_confirmation(booking)
    @booking = booking
    @customer = booking.customer
    @event = booking.event
    mail to: @customer.email, subject: "Booking confirmation for #{@event.name}"
  end
end