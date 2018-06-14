class TherapistsController < ApplicationController
  def new
    @therapist = Therapist.new

  end

  def create
    @therapist = Therapist.create(therapist_params)
    #from google, this "solves" the problem but is not a good solution!
    @therapist.user.meta = @therapist
    if @therapist.save
      session[:user_id] = @therapist.id
      redirect_to appointments_path
    else
      # binding.pry
      render :new
    end

  end

  private
  def therapist_params
    params.require(:therapist).permit(:code, user_attributes: [:name, :password])
  end
end
