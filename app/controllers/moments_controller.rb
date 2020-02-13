class MomentsController < ApplicationController
  # def index
  #     hash = {}
  #     # get all moments, ordered by date
  #     # iterate through moments
  #     # for each moment: first check year
  #     # if year exists in hash, move into year, else create year
  #     # if month exists in hash[year], move into month, else create month
  #     # append moment to month
  #     {
  #         2020 => {
  #             January: [@moment, @moment],
  #             February: [],
  #             March: [],
  #             April: [],
  #         },
  #         2019
  #     }
  # end

  # /moments?year=2020,month=1
  # def selected_moments
  #     year = params[:year]
  #     month = params[:month]
  #     start_date
  #     end_date
  #     # search through moments for created_at between start date and end date
  #     moments = Moment.
  # end


  def index
    if params[:query].present?
      # find the friend instance from the friend name
      # @friend = Friend.find_by("name ILIKE ?", "%#{params[:query]}%")
      # friend_ids = friends.map{|friend| friend.id}
      # @moments = Moment.where(friend_id: @friend.id)
    elsif params[:filter_by].present?
      @moments = Moment.where(friend_id: params[:filter_by])
    else
      @moments = Moment.where(seen: false).order(created_at: :asc)
      @videos = Moment.where(seen: false, media_type: "video")
      @images = Moment.where(seen: false, media_type: "image")
      @texts = Moment.where(seen: false, media: nil)
    end
  end

  def new
    token = params[:token]
    @friend = Friend.find_by(authentication_token: token)
    @moment = Moment.new
  end

  def create
    @moment = Moment.new(moments_params)
    if @moment.save
      # redirect to? Custom page after drag and drop
      redirect_to moment_success_path
    else
      # reload the page? Error message?
      render :new
    end
  end

  def success
  end

  def show
    @moments = Moment.where(user: current_user)
    @unseen_moments = @moments.select { |moment| !moment.seen }

    if @unseen_moments.empty?
      # Redirect to timeline or special page: You've played all your moments of the day!'
    else
      @moments = @unseen_moments.first(5)
      # show - @moments, all moments to show here, display all of them in HTML but with display: none (CSS),
      # a faire tourner avec JS.
      # todo: JS change moment to seen status
      # todo: JS Timer logic
      # timer for the day - create a job that runs at midnight,
      # reseting the user.time_left_today - script executed by heroku at time
      # timer for the show 5mn - time left today - JS (event listener if he closes windows),
      # Ajax request, update user model (time left)
      # timer running out - JS - update user model (time left)
    end
  end
  # to do: javascript, to change moment to seen status
  # todo: add time_left_today to user (migration)

  # show - @moments, all moments to show here,
  # display all of them in HTML but with display: none (CSS), faie tourner avec JS.
  # unseen
  # timer for the day - create a job that runs at midnight,
  # reseting the user.time_left_today - script executed by heroku at time
  # timer for the show 5mn - time left today - JS (event listener if he closes windows),
  # Ajax request, update user model (time left)
  # timer running out - JS - update user model (time left)

  def carrousel
    @moments = Moment.where(seen: false, user: current_user)
    @moment = Moment.find(params[:moment_id])
  end

  def tagging
    # tag method here. Need to update schema to add a tag field to moments.
  end

  def destroy
    moment = Moment.find(params[:id])
    moment.destroy
    # redirect_to timeline page?
  end

  private

  def moments_params
    params.require(:moment).permit(:text_content, :media, :user_id, :friend_id, :seen)
  end
end
