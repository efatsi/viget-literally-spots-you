class UpdatesController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def latest
    @update = Update.last
  end

  def index
    @updates = Update.order("created_at DESC")
  end

  def show
    @update = Update.find(params[:id])
  end

  def new
    @update = Update.new
  end

  def create
    @update = Update.new(update_params)

    if @update.save
      @update.notify_if_necessary
      redirect_to root_url
    end
  end

  private

  def update_params
    params.require(:update).permit([:status, :image, :pixel_count, :canny_image])
  end
end
