class SiteModulesController < ApplicationController
  before_action :set_site_module, only: [:show, :update, :destroy]

  # GET /site_modules
  def index
    @site_modules = SiteModule.all

    render json: @site_modules
  end

  # GET /site_modules/1
  # def show
  #   render json: @site_module
  # end

  # POST /site_modules
  # def create
  #   @site_module = SiteModule.new(site_module_params)
  #
  #   if @site_module.save
  #     render json: @site_module, status: :created, location: @site_module
  #   else
  #     render json: @site_module.errors, status: :unprocessable_entity
  #   end
  # end

  # PATCH/PUT /site_modules/1
  # def update
  #   if @site_module.update(site_module_params)
  #     render json: @site_module
  #   else
  #     render json: @site_module.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /site_modules/1
  # def destroy
  #   @site_module.destroy
  # end

  def passwords
    render json: File.read('data/site_modules/passwords.json')
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_site_module
      @site_module = SiteModule.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def site_module_params
      params.require(:site_module).permit(:name)
    end
end
