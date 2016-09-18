class UglytermsController < ApplicationController
  before_action :set_uglyterm, only: [:show, :edit, :update, :destroy]

  # GET /uglyterms
  def index
    @uglyterms = Uglyterm.all
  end

  # GET /uglyterms/1
  def show
  end

  # GET /uglyterms/new
  def new
    @uglyterm = Uglyterm.new
  end

  # GET /uglyterms/1/edit
  def edit
  end

  # POST /uglyterms
  def create
    @uglyterm = Uglyterm.new(uglyterm_params)

    if @uglyterm.save
      redirect_to @uglyterm, notice: 'Uglyterm was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /uglyterms/1
  def update
    if @uglyterm.update(uglyterm_params)
      redirect_to @uglyterm, notice: 'Uglyterm was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /uglyterms/1
  def destroy
    @uglyterm.destroy
    redirect_to uglyterms_url, notice: 'Uglyterm was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uglyterm
      @uglyterm = Uglyterm.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def uglyterm_params
      params.require(:uglyterm).permit(:term)
    end
end
