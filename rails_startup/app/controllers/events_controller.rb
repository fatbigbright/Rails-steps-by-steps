class EventsController < ApplicationController
    before_filter :find_event, :only => [ :show, :edit, :update, :destroy ]
    def index
        # @events = Event.all
        @events = Event.page(params[:page]).per(3) #paging
        @page_title = "All Events"
    end
    def new
        @event = Event.new
        @page_title = "Add new event"
    end
    def create
        @event = Event.new(params[:event])

        if @event.save
            flash[:notice] = "event was successfully created"
            redirect_to :action => :index
        else
            render :action => :new
        end
    end
    def show
        @page_title = @event.name
    end
    def edit
        @page_title = @event.name
    end
    def update
        if @event.update_attributes(params[:event])
            flash[:notice] = "event was successfully updated"
            redirect_to :action => :index
        else
            render :action => :edit
        end
    end
    def destroy
        @event.destroy

        flash[:alert] = "event was successfully deleted"
        redirect_to :action => :index
    end

    protected
    def find_event
        @event = Event.find(params[:id])
    end
end
