class TutoriaController < ApplicationController
  before_action :set_tutorium, only: [:show, :edit, :update, :destroy]

  # GET /tutoria
  # GET /tutoria.json
  def index
    @tutoria = Tutorium.all
  end

  # GET /tutoria/1
  # GET /tutoria/1.json
  def show
  end

  # GET /tutoria/new
  def new
    @tutorium = Tutorium.new
  end

  # GET /tutoria/1/edit
  def edit
  end

  # POST /tutoria
  # POST /tutoria.json
  def create
    @tutorium = Tutorium.new(tutorium_params)

    respond_to do |format|
      if @tutorium.save
        format.html { redirect_to @tutorium, notice: 'Tutorium was successfully created.' }
        format.json { render :show, status: :created, location: @tutorium }
      else
        format.html { render :new }
        format.json { render json: @tutorium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tutoria/1
  # PATCH/PUT /tutoria/1.json
  def update
    respond_to do |format|
      if @tutorium.update(tutorium_params)
        format.html { redirect_to @tutorium, notice: 'Tutorium was successfully updated.' }
        format.json { render :show, status: :ok, location: @tutorium }
      else
        format.html { render :edit }
        format.json { render json: @tutorium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tutoria/1
  # DELETE /tutoria/1.json
  def destroy
    @tutorium.destroy
    respond_to do |format|
      format.html { redirect_to tutoria_url, notice: 'Tutorium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tutorium
      @tutorium = Tutorium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tutorium_params
      params.require(:tutorium).permit(:asignatura, :facultad)
    end
end
