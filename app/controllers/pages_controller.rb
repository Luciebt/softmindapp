class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @unseens = Moment.where(seen: false).where.not(media: nil)
  end

  def play
    @moments = Moment.where(seen: false).where.not(media: nil).sample(4)
  end
end
