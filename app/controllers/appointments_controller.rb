class AppointmentsController < ApplicationController

  def index
    @my_appointments = current_user.meta.appointments.all.order("created_at DESC")
    @appointment = Appointment.new
  end


  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)

    if @appointment.save

      redirect_to appointments_path
    else
      render 'new'
    end
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
    params.require(:appointment).permit(:date, :status)
  end

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end
end
