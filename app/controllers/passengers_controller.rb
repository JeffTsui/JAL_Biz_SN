class PassengersController < ApplicationController
  include PassengersHelper
  before_action :set_passenger, only: [:show, :edit, :update, :destroy, :social, :comment, :print]

  # GET /passengers
  # GET /passengers.json
  def index
    @passengers = Passenger.all
  end

  # GET /passengers/1
  # GET /passengers/1.json
  def show
  end
  
  def social
    
  end
  
  def print
    uri = URI.parse("http://153.142.222.195:8888//jal_hackthon/print.php")
    http = Net::HTTP.new(uri.host, uri.port)
    
    form_data = {
      typeopt: @passenger.travel_type,
      txta: @passenger.comments
    }
    
    request = Net::HTTP.post_form(uri, form_data)
    
    render template: "passengers/index.html.erb"
  end
  
  def comment
  end

  # GET /passengers/new
  def new
    @passenger = Passenger.new
  end

  # GET /passengers/1/edit
  def edit
  end

  # POST /passengers
  # POST /passengers.json
  def create
    @passenger = Passenger.new(passenger_params)

    respond_to do |format|
      if @passenger.save
        format.html { redirect_to @passenger, notice: 'Passenger was successfully created.' }
        format.json { render :show, status: :created, location: @passenger }
      else
        format.html { render :new }
        format.json { render json: @passenger.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /passengers/1
  # PATCH/PUT /passengers/1.json
  def update
    @passenger.update(passenger_params)
    if params[:preview]
      render template: "passengers/show.html.erb"
    end
  end

  # DELETE /passengers/1
  # DELETE /passengers/1.json
  def destroy
    @passenger.destroy
    respond_to do |format|
      format.html { redirect_to passengers_url, notice: 'Passenger was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_passenger
      @passenger = Passenger.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def passenger_params
      params.require(:passenger).permit(:flight, :seat, :name, :from, :destination, 
        :work, :hobby, :travel_type, :comments, :avatar, :fb, :linkedin, :source)
    end
end
