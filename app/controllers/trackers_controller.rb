class TrackersController < ApplicationController
     
    
	before_action :find_tracker, only: [:show, :edit, :update, :destroy]
    # before_filter :require_permission 
	before_action :authenticate_user!
	

	def index
        # @trackers = Tracker.all.order("created_at DESC")
         @trackers = Tracker.where(:user_id => current_user.id).order("created_at DESC").paginate(:page => params[:page], :per_page => 9)
        # @search = Tracker.new(params[:search])
        # @trackers = @search.scope    
    end



	def show
	end

	def new
		@tracker = current_user.trackers.build
	end

	def create
		@tracker = current_user.trackers.build(tracker_params)

		if @tracker.save
			redirect_to @tracker, notice: "Task is successfully created"
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @tracker.update(tracker_params)
			redirect_to @tracker, notice: "Task is successfully updated"
		else
			render 'edit'
		end
	end

	def destroy
		@tracker.destroy
		redirect_to root_path
	end

  

	private

	def tracker_params
		params.require(:tracker).permit(:amount, :date, :task, :hours, :document, :avatar, :running_total)
	end

	def find_tracker
		@tracker = Tracker.find(params[:id])
	
	end

end



   