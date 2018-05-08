class LecturesController < InheritedResources::Base
  before_action :authenticate_user!

  def upvote
    @lecture = Lecture.find(params[:id])
    @lecture.upvote_from current_user
   # @lecture.upvote_by current_user
      redirect_to @lecture
  end


  def spam
    @user = current_user
   @lecture=Lecture.find(params[:id])
   
   current_user.lectures << @lecture unless current_user.lectures.include? @lecture

    respond_to do |format|
        format.html { redirect_to @lecture, notice: 'Done.' }
    end
  end

  def show
    @lecture= Lecture.find(params[:id])
    @users= Lecture.find(params[:id]).users  
  
  end
  



 private

    def lecture_params
      params.require(:lecture).permit(:content, :attachment, :course_id)
    end

  
    
   

  
end

