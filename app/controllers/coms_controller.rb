class ComsController < ApplicationController
  before_action :set_com, only: [:show, :edit, :update, :destroy]

  # GET /coms
  # GET /coms.json
  def index
    @coms = Com.all
  end

  # GET /coms/1
  # GET /coms/1.json
  def show
  end

  # GET /coms/new
  def new
    @com = Com.new
  end

  # GET /coms/1/edit
  def edit
  end

  # POST /coms
  # POST /coms.json
  def create
    @com = Com.new(com_params)

    respond_to do |format|
      if @com.save
        format.html { redirect_to @com, notice: 'Com was successfully created.' }
        format.json { render action: 'show', status: :created, location: @com }
      else
        format.html { render action: 'new' }
        format.json { render json: @com.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coms/1
  # PATCH/PUT /coms/1.json
  def update
    respond_to do |format|
      if @com.update(com_params)
        format.html { redirect_to @com, notice: 'Com was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @com.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coms/1
  # DELETE /coms/1.json
  def destroy
    @com.destroy
    respond_to do |format|
      format.html { redirect_to coms_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_com
      @com = Com.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def com_params
      params.require(:com).permit(:last_name, :content, :first_name)
    end
end
