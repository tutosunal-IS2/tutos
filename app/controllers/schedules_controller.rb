class SchedulesController < ApplicationController
  before_action :set_schedule, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_tutor!, except:[:index]




  

  # GET /schedules
  # GET /schedules.json
  def index
      #@schedules = Schedule.where(start: params[:start]..params[:end])
      if tutor_signed_in?
        @schedules =  Schedule.where(likes_tutors_by_subject_id: current_tutor.likes_tutors_by_subjects,start: params[:start]..params[:end])
      elsif student_signed_in?
       
       
        #@subject =Subject.find(params[:param1].to_i)
        @subject =Subject.find(3)

        @schedules = Schedule.where(likes_tutors_by_subject_id: @subject.likes_tutors_by_subjects , start: params[:start]..params[:end] )
       
      end
  end

  # GET /schedules/1
  # GET /schedules/1.json
  def show
  end

  # GET /schedules/new
  def new
    @schedule = Schedule.new
  end

  # GET /schedules/1/edit
  def edit
  end

  # POST /schedules
  # POST /schedules.json
  def create
    @schedule = Schedule.new(schedule_params)
    @schedule.save

  end

  # PATCH/PUT /schedules/1
  # PATCH/PUT /schedules/1.json
  def update
    @schedule.update(schedule_params)
  end

  # DELETE /schedules/1
  # DELETE /schedules/1.json
  def destroy
    @schedule.destroy
    respond_to do |format|
      format.html { redirect_to schedules_url, notice: 'Schedule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule
      @schedule = Schedule.find(params[:id])

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def schedule_params
      params.require(:schedule).permit(:title, :start, :end, :color, :likes_tutors_by_subject_id)
    end

    
end
