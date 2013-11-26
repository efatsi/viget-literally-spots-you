class UpdatesController < ApplicationController

  def new
    @update = Update.new
  end

  def create
    @update = Update.new(update_params)

    if @update.save
      redirect_to root_url
    end
  end

  private

  def update_params
    params.require(:update).permit([:status, :image])
  end
end
