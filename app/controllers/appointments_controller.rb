class AppointmentsController < ApplicationController

  def index
    @my_appointments = current_user.meta.appointments.all.order("created_at DESC")
    @all_appointments = Appointment.all
  end


  def new
    @appointment = Appointment.new
    therapist = @appointment.build_therapist
    client = @appointment.build_client
  end

  def create
    @appointment = Appointment.new(appointment_params)
    # raise params.inspect
    @appointment.client = Client.find(params[:appointment][:client_id])
    @appointment.therapist = Therapist.find(params[:appointment][:therapist_id])
    # binding.pry
    @appointment.save
      redirect_to appointments_path

    #   render 'new'
    # end
  end

  def show
  end

  def edit
  end

  def update
    if @appointment.update(appointment_params)
      redirect_to appointment_path(@appointment)
    else
      render 'edit'
    end
  end

  def destroy
    @appointment.destroy
    redirect_to appointments_path
  end

  def complete
    @appointment = Appointment.find(params[:id])
    @appointment.update_attribute(:status, true)
    redirect_to appointment_path
  end




  private
  def appointment_params
    params.require(:appointment).permit(:therapist_id, :client_id, :date, :status)
  end

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end
end
