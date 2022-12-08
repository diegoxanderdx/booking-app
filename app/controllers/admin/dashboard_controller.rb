class Admin::DashboardController < AdminController
  def index
    @event_count = Event.count
    @upcoming_event_count = Event.upcoming_events.count
    @past_event_count = Event.past_events.count
    @customer_count = Customer.count
    @booking_count = Booking.count
    @revenue_earned = Booking.pluck(:amount_paid).sum
  end
end