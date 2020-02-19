class MomentsController < ApplicationController
   skip_before_action :authenticate_user!, only: [:new, :create]

   def index
    if params[:query].present?

      if @friend = Friend.find_by("name ILIKE ?", "%#{params[:query]}%")

        @moments = Moment.where(friend_id: @friend.id)
        @videos = Moment.where(seen: true, friend_id: @friend.id, media_type: "video")
        @images = Moment.where(seen: true, friend_id: @friend.id, media_type: "image")
        @texts = Moment.where(friend_id: @friend.id, media: nil)

      else
        redirect_to moments_path
      end
    # elsif params[:filter_by].present?
    #   @moments = Moment.where(friend_id: params[:filter_by])
    else
      @moments = Moment.where(seen: true).order(created_at: :asc)
      @videos = Moment.where(seen: true, media_type: "video")
      @images = Moment.where(seen: true, media_type: "image")
      @texts = Moment.where(media: nil)

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
      redirect_to moment_success_path(friend_id: moments_params[:friend_id])
    else
      # reload the page? Error message?
      render :new
    end
  end

  def seen
    moment_ids = params[:moment_ids]
    moment_ids.split(',').each do |id|
      moment = Moment.find(id)
      moment.update(seen: true)
    end

    redirect_to moments_path

  end

  def success
    @friend = Friend.find(params[:friend_id])
  end

  def show
    @moments = Moment.where(user: current_user)
    @unseen_moments = @moments.select { |moment| !moment.seen }

    if @unseen_moments.empty?
      redirect_to moment_none_path
      # Redirect to timeline or special page: You've played all your moments of the day!'
    else
      @moments = @unseen_moments.first(5)
    end
  end

  def carrousel
    user = User.find(1)
    @moments = Moment.where(seen: true, user: user)
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
