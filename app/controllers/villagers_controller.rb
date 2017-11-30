class VillagersController < ApplicationController

  def new
    @villager = Villager.new
    @campsite = Campsite.find(params[:campsite_id])
  end

  def create
    @campsite = Campsite.find(params[:campsite_id])
    @villager = Villager.new(villager_params)
    @villager.campsite = @campsite
    if @villager.save
      flash[:notice] = "Added Villager"
      redirect_to @campsite
    else
      flash[:alert] = @villager.errors.full_messages.join(', ')
      render :new
    end
  end

  private

  def villager_params
    params.require(:villager).permit(:name, :animal, :happiness)
  end
end
