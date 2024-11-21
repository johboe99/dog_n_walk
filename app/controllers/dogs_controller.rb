class DogsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @dogs = Dog.all
git 
    @markers = @dogs.geocoded.map do |dog|
      {
        lat: dog.latitude,
        lng: dog.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {dog: dog})
      }
    end
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    @user = current_user.id
    @dog.user_id = @user
    if @dog.save
      redirect_to dog_path(@dog), notice: "Dog was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def destroy
    @dog.destroy
    redirect_to dogs_path(@dog.all), status: :see_other
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :age, :breed, :description, :photo, :address)
  end
end
