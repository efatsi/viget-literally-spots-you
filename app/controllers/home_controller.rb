class HomeController < ApplicationController
  def index
    @update = Update.last
  end
end
