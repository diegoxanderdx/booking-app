class RefundsController < ApplicationController
  before_action :set_refund_with_parents, only: %i[edit update refund_acceptance]

  def new
    @refund = Refund.new
  end

  def edit
  end

  def create
    booking = Booking.find_by(order_number: params[:refund][:order_number])

    if booking.present?
      if booking.is_refundable?
        @refund = Refund.create(
          customer_id: booking.customer_id,
          booking_id: booking.id,
          state: 'accepted'
        )
        redirect_to edit_refund_path(@refund), notice: 'Your order number is valid. Please fill the required details to process your refund request'
      else
        redirect_to new_refund_path, alert: "You are requesting refund for a past event. Refunds are allowed only for future events"
      end
    else
      redirect_to new_refund_path, alert: "The order number #{params[:refund][:order_number]} is invalid. Please provide a valid number"
    end
  end

  def update
    refundable_amount = params[:refund][:number_of_tickets].to_i * @event.entrance_fee
    if @refund.update(number_of_tickets: params[:refund][:number_of_tickets])
      RefundNotificationMailer.admin_refund_notification(@refund).deliver_now
      RefundNotificationMailer.customer_refund_notification(@refund).deliver_now
      redirect_to refund_acceptance_refund_path, notice: "You are eligible for refund of $#{refundable_amount.to_f}"
    else
      redirect_to refund_acceptance_refund_path, alert: 'Something went wrong'
    end
  rescue StandardError => error 
    redirect_to refund_acceptance_refund_path, alert: error.message
  end

  def refund_acceptance

  end

  private

  def set_refund_with_parents
    @refund = Refund.find(params[:id])
    @booking = @refund.booking
    @event = @booking.event
  end
end