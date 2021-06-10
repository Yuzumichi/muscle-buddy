class TrainingsController < ApplicationController


  def index
    @trainings = Training.includes(:user).order('created_at DESC')
  end

  def new
    @training = Training.new
  end

  def create
    @training = Training.new(training_params)
    if @training.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @training = Training.find(params[:id])
  end

  def edit
  end

  def update
    if @training.update(training_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    training = Training.find(params[:id])
    training.destroy
    redirect_to root_path
  end



  private

  def training_params
    params.require(:training).permit(:parts_outline_id, :parts_detaile_id, :start_time, :weight, :number_of_times, :text, :image).merge(user_id: current_user.id)
  end

end
