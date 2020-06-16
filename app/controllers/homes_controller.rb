class HomesController < ApplicationController
  def top
  	@salons = Salon.all
  end

  def about
  end
end
