class RegisteredAppsController < ApplicationController
  before_action :set_registered_app, only: [:show, :edit, :update, :destroy]

  # GET /registered_apps
  # GET /registered_apps.json
  def index
    @registered_apps = RegisteredApp.all
  end

  # GET /registered_apps/1
  # GET /registered_apps/1.json
  def show
  end

  # GET /registered_apps/new
  def new
    @registered_app = RegisteredApp.new
  end

  # GET /registered_apps/1/edit
  def edit
  end

  # POST /registered_apps
  # POST /registered_apps.json
  def create
    @registered_app = RegisteredApp.new(registered_app_params)

    respond_to do |format|
      if @registered_app.save
        format.html { redirect_to @registered_app, notice: 'Registered app was successfully created.' }
        format.json { render action: 'show', status: :created, location: @registered_app }
      else
        format.html { render action: 'new' }
        format.json { render json: @registered_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registered_apps/1
  # PATCH/PUT /registered_apps/1.json
  def update
    respond_to do |format|
      if @registered_app.update(registered_app_params)
        format.html { redirect_to @registered_app, notice: 'Registered app was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @registered_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registered_apps/1
  # DELETE /registered_apps/1.json
  def destroy
    @registered_app.destroy
    respond_to do |format|
      format.html { redirect_to registered_apps_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registered_app
      @registered_app = RegisteredApp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registered_app_params
      params.require(:registered_app).permit(:name, :widget, :widget_endpoint)
    end
end
