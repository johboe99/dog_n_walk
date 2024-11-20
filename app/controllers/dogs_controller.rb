class DogsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @dogs = Dog.all
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    @user = current_user.id
    @dog.user_id = @user
    if @dog.save
      redirect_to dogs_path, notice: "Dog was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def destroy

  end

  private

  def dog_params
    params.require(:dog).permit(:name, :age, :breed, :description)
  end
end
