class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def new

  end

  def create

  end

  def show

  end

  def destroy

  end

  private

  def dog_params
  end
end
