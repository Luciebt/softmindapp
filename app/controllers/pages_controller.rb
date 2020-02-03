class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @moments = Moment.where(seen: false).sample(4)
  end
end
