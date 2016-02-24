class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about_us]
  def home
    @sample_caravan1 = sample_caravan
    @sample_caravan2 = sample_caravan
    until @sample_caravan1 != @sample_caravan2
      @sample_caravan2 = sample_caravan
    end
    @sample_caravan3 = sample_caravan
    until (@sample_caravan1 != @sample_caravan2) && (@sample_caravan1 != @sample_caravan3) && (@sample_caravan2 != @sample_caravan3)
      @sample_caravan3 = sample_caravan
    end
    @sample_caravans = [@sample_caravan1, @sample_caravan2, @sample_caravan3]
  end

  def about_us
  end

  private
  def sample_caravan
    Caravan.find((1..Caravan.count).to_a.sample)
  end
end
