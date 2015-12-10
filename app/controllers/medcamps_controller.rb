class MedcampsController < ApplicationController
  before_action :set_medcamp, only: [:show, :edit, :update, :destroy]

  # GET /medcamps
  # GET /medcamps.json
  def index
    @medcamps = Medcamp.all.order('location ASC').paginate(:page => params[:page], :per_page => 10)
  end

  # GET /medcamps/1
  # GET /medcamps/1.json
  def show
  end

  # GET /medcamps/new
  def new
    @medcamp = Medcamp.new
  end

  # GET /medcamps/1/edit
  def edit
  end

  # POST /medcamps
  # POST /medcamps.json
  def create
    @medcamp = Medcamp.new(medcamp_params)

    respond_to do |format|
      if @medcamp.save
        format.html { redirect_to @medcamp, notice: 'Medcamp was successfully created.' }
        format.json { render :show, status: :created, location: @medcamp }
      else
        format.html { render :new }
        format.json { render json: @medcamp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medcamps/1
  # PATCH/PUT /medcamps/1.json
  def update
    respond_to do |format|
      if @medcamp.update(medcamp_params)
        format.html { redirect_to @medcamp, notice: 'Medcamp was successfully updated.' }
        format.json { render :show, status: :ok, location: @medcamp }
      else
        format.html { render :edit }
        format.json { render json: @medcamp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medcamps/1
  # DELETE /medcamps/1.json
  def destroy
    @medcamp.destroy
    respond_to do |format|
      format.html { redirect_to medcamps_url, notice: 'Medcamp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medcamp
      @medcamp = Medcamp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medcamp_params
      params.require(:medcamp).permit(:location, :organiser, :contact, :date, :info)
    end
end
