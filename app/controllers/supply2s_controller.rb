class Supply2sController < ApplicationController
  before_action :set_supply2, only: [:show, :edit, :update, :destroy]

  # GET /supply2s
  # GET /supply2s.json
  def index
    @supply2s = Supply2.all
  end

  # GET /supply2s/1
  # GET /supply2s/1.json
  def show
  end

  # GET /supply2s/new
  def new
    @supply2 = Supply2.new
  end

  # GET /supply2s/1/edit
  def edit
  end

  # POST /supply2s
  # POST /supply2s.json
  def create
    @supply2 = Supply2.new(supply2_params)

    respond_to do |format|
      if @supply2.save
        format.html { redirect_to @supply2, notice: 'Supply2 was successfully created.' }
        format.json { render :show, status: :created, location: @supply2 }
      else
        format.html { render :new }
        format.json { render json: @supply2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supply2s/1
  # PATCH/PUT /supply2s/1.json
  def update
    respond_to do |format|
      if @supply2.update(supply2_params)
        format.html { redirect_to @supply2, notice: 'Supply2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @supply2 }
      else
        format.html { render :edit }
        format.json { render json: @supply2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supply2s/1
  # DELETE /supply2s/1.json
  def destroy
    @supply2.destroy
    respond_to do |format|
      format.html { redirect_to supply2s_url, notice: 'Supply2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supply2
      @supply2 = Supply2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supply2_params
      params.require(:supply2).permit(:material, :location, :contact, :info)
    end
end
