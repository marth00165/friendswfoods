class RestaurantEventsController < ApplicationController
  before_action :set_restaurant_event, only: [:show, :edit, :update, :destroy]

  # GET /restaurant_events
  # GET /restaurant_events.json
  def index
    @restaurant_events = RestaurantEvent.all
  end

  # GET /restaurant_events/1
  # GET /restaurant_events/1.json
  def show
  end

  # GET /restaurant_events/new
  def new
    @restaurant_event = RestaurantEvent.new
  end

  # GET /restaurant_events/1/edit
  def edit
  end

  # POST /restaurant_events
  # POST /restaurant_events.json
  def create
    @restaurant_event = RestaurantEvent.new(restaurant_event_params)

    respond_to do |format|
      if @restaurant_event.save
        format.html { redirect_to @restaurant_event, notice: 'Restaurant event was successfully created.' }
        format.json { render :show, status: :created, location: @restaurant_event }
      else
        format.html { render :new }
        format.json { render json: @restaurant_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurant_events/1
  # PATCH/PUT /restaurant_events/1.json
  def update
    respond_to do |format|
      if @restaurant_event.update(restaurant_event_params)
        format.html { redirect_to @restaurant_event, notice: 'Restaurant event was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurant_event }
      else
        format.html { render :edit }
        format.json { render json: @restaurant_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurant_events/1
  # DELETE /restaurant_events/1.json
  def destroy
    @restaurant_event.destroy
    respond_to do |format|
      format.html { redirect_to restaurant_events_url, notice: 'Restaurant event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant_event
      @restaurant_event = RestaurantEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_event_params
      params.require(:restaurant_event).permit(:event_id, :full, :amount_of_members)
    end
end
