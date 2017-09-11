class Api::RegistrationsController < Api::BaseController
  before_action :set_event

  def create
    registration = event.registrations.new(registration_params)

    if registration.save
      render status: 200, json: {
        message: "You have successfully registered",
        event: @event,
        registration: registration
      }.to_json
    else
      render status: 422, json: {
        message: "Registration could not be created",
        errors: registration.errors
      }.to_json
    end
  end

  def set_event
    @event = Event.find(params[:room_id])
  end

  private
  def registration_params
    params
      .require(:registration)
      .permit(:status, :price, :guests_count, :event_id)
  end

end
