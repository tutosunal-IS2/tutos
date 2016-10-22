class LikesTutorsBySubjectsController < ApplicationController
  before_action :set_likes_tutors_by_subject, only: [:show, :edit, :update, :destroy]

  # GET /likes_tutors_by_subjects
  # GET /likes_tutors_by_subjects.json
  def index
    @likes_tutors_by_subjects = LikesTutorsBySubject.all
  end

  # GET /likes_tutors_by_subjects/1
  # GET /likes_tutors_by_subjects/1.json
  def show
  end

  # GET /likes_tutors_by_subjects/new
  def new
    @likes_tutors_by_subject = LikesTutorsBySubject.new
  end

  # GET /likes_tutors_by_subjects/1/edit
  def edit
  end

  # POST /likes_tutors_by_subjects
  # POST /likes_tutors_by_subjects.json
  def create

    @likes_tutors_by_subject = LikesTutorsBySubject.new(likes_tutors_by_subject_params)

    respond_to do |format|
      if @likes_tutors_by_subject.save
        format.html { redirect_to @likes_tutors_by_subject, notice: 'Likes tutors by subject was successfully created.' }
        format.json { render :show, status: :created, location: @likes_tutors_by_subject }
      else
        format.html { render :new }
        format.json { render json: @likes_tutors_by_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  def create_dd

  end

  # PATCH/PUT /likes_tutors_by_subjects/1
  # PATCH/PUT /likes_tutors_by_subjects/1.json
  def update
    respond_to do |format|
      if @likes_tutors_by_subject.update(likes_tutors_by_subject_params)
        format.html { redirect_to @likes_tutors_by_subject, notice: 'Likes tutors by subject was successfully updated.' }
        format.json { render :show, status: :ok, location: @likes_tutors_by_subject }
      else
        format.html { render :edit }
        format.json { render json: @likes_tutors_by_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /likes_tutors_by_subjects/1
  # DELETE /likes_tutors_by_subjects/1.json
  def destroy
    @likes_tutors_by_subject.destroy
    respond_to do |format|
      format.html { redirect_to likes_tutors_by_subjects_url, notice: 'Likes tutors by subject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_likes_tutors_by_subject
      @likes_tutors_by_subject = LikesTutorsBySubject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def likes_tutors_by_subject_params
      params.require(:likes_tutors_by_subject).permit(:tutor_id, :subject_id)
    end
end
