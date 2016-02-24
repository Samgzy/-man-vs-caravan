class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about_us]
  def home
    @sample_caravans = Caravan.count
  end

  def about_us
  end
end
