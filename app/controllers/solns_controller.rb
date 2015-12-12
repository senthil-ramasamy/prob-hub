class SolnsController < ApplicationController
  before_action :set_soln, only: [:show, :edit, :update, :destroy]

  # GET /solns
  # GET /solns.json
  def index
    @solns = Soln.all
  end

  # GET /solns/1
  # GET /solns/1.json
  def show
  end

  # GET /solns/new
  def new
    @soln = Soln.new
  end

  # GET /solns/1/edit
  def edit
  end

  # POST /solns
  # POST /solns.json
  def create
    @prob = Prob.find(params[:prob_id])
    @soln = @prob.solns.new(soln_params)

    respond_to do |format|
      if @soln.save
        format.html { redirect_to @soln.prob, notice: 'Soln was successfully created.' }
        format.json { render :show, status: :created, location: @soln }
      else
        format.html { render :new }
        format.json { render json: @soln.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /solns/1
  # PATCH/PUT /solns/1.json
  def update
    respond_to do |format|
      if @soln.update(soln_params)
        format.html { redirect_to @soln, notice: 'Soln was successfully updated.' }
        format.json { render :show, status: :ok, location: @soln }
      else
        format.html { render :edit }
        format.json { render json: @soln.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solns/1
  # DELETE /solns/1.json
  def destroy
    @soln.destroy
    respond_to do |format|
      format.html { redirect_to solns_url, notice: 'Soln was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_soln
      @soln = Soln.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def soln_params
      params.require(:soln).permit(:solnname, :solntext, :solnauthor, :solnid, :solndate, :prob_id, :solnvotes, :solnrating)
    end
end
