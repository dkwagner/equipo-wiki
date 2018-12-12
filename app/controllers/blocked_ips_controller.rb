class BlockedIpsController < ApplicationController
  before_action :set_blocked_ip, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!

  # GET /blocked_ips
  # GET /blocked_ips.json
  def index
    @blocked_ips = BlockedIp.all
  end

  # GET /blocked_ips/1
  # GET /blocked_ips/1.json
  def show
  end

  # GET /blocked_ips/new
  def new
    @blocked_ip = BlockedIp.new
  end

  # GET /blocked_ips/1/edit
  def edit
  end

  # POST /blocked_ips
  # POST /blocked_ips.json
  def create
    @blocked_ip = BlockedIp.new(blocked_ip_params)

    respond_to do |format|
      if @blocked_ip.save
        format.html { redirect_to @blocked_ip, notice: 'Blocked ip was successfully created.' }
        format.json { render :show, status: :created, location: @blocked_ip }
      else
        format.html { render :new }
        format.json { render json: @blocked_ip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blocked_ips/1
  # PATCH/PUT /blocked_ips/1.json
  def update
    respond_to do |format|
      if @blocked_ip.update(blocked_ip_params)
        format.html { redirect_to @blocked_ip, notice: 'Blocked ip was successfully updated.' }
        format.json { render :show, status: :ok, location: @blocked_ip }
      else
        format.html { render :edit }
        format.json { render json: @blocked_ip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blocked_ips/1
  # DELETE /blocked_ips/1.json
  def destroy
    @blocked_ip.destroy
    respond_to do |format|
      format.html { redirect_to blocked_ips_url, notice: 'Blocked ip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blocked_ip
      @blocked_ip = BlockedIp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blocked_ip_params
      params.require(:blocked_ip).permit(:ip)
    end
end
