class Admin::EventsController < AdminController
  # before_action :set_workshop, only: %i[show, destroy]

  def index
    @q = Event.ransack(params[:q])
    @events = @q.result
  end

  def show
    @event = Event.friendly.find(params[:id])
  end


  def destroy
    @event = Event.friendly.find(params[:id])
    @event.destroy
      redirect_to admin_workshops_path, notice: "Event deleted successfully"
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to admin_events_path, notice: "Event created successfully"
    else
      render :new 
    end
  end


  private
  def event_params
    params.require(:event).permit(:name, :description, :start_date, :end_date, :start_time, :end_time, :total_sits, :remaining_sits, :entrance_fee)
  end
  # def set_event
  #   @event = Event.friendly.find(params[:id])
  # end
end