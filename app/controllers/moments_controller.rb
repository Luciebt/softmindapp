class MomentsController < ApplicationController
    def index
        hash = {}
        # get all moments, ordered by date
        # iterate through moments
        # for each moment: first check year
        # if year exists in hash, move into year, else create year
        # if month exists in hash[year], move into month, else create month
        # append moment to month
        {
            2020 => {
                January: [@moment, @moment],
                Feb: [],
                March: [],
                April: [],
            },
            2019
        }
    end

    # /moments?year=2020,month=1
    def selected_moments
        year = params[:year]
        month = params[:month]
        start_date
        end_date
        # search through moments for created_at between start date and end date
        moments = Moment.
    end

    def show
        @moments = (Moment.all).seen
        # PUT Moments UNSEEN by default
        # once showed there, put moments on seen
        # show - @moments, all moments to show here, display all of them in HTML but with display: none (CSS), à faire tourner avec JS.
        # unseen
        # timer for the day - create a job that runs at midnight, reseting the user.time_left_today - script executed by heroku at time
        # timer for the show 5mn - time left today - JS (event listener if he closes windows), Ajax request, update user model (time left)
        # timer running out - JS - update user model (time left)
    end

    def carrousel

        @moments = Moment.where(user: current_user).order_by(created_at)
    end



end
