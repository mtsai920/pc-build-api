class BuildsController < ProtectedController
  before_action :set_build, only: %i[show update destroy]

  # GET /builds
  def index
    @builds = current_user.builds.all

    render json: @builds
  end

  # GET /builds/1
  def show
    render json: @build
  end

  # POST /builds
  def create
    @build = current_user.builds.build(build_params)

    if @build.save
      render json: @build, status: :created, location: @build
    else
      render json: @build.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /builds/1
  def update
    if @build.update(build_params)
      render json: @build
    else
      render json: @build.errors, status: :unprocessable_entity
    end
  end

  # DELETE /builds/1
  def destroy
    @build.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_build
    @build = current_user.builds.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def build_params
    params.require(:build).permit(:name, :description, :budget, :cpu, :gpu,
                                  :motherboard, :ram, :cooler, :power_supply,
                                  :storage, :other, :user_id)
  end
end
