class LecturesController < InheritedResources::Base
  def upvote
    @lecture = Lecture.find(params[:id])
    @lecture.upvote_from current_user
   # @lecture.upvote_by current_user
      redirect_to @lecture
  end
  



 private

    def lecture_params
      params.require(:lecture).permit(:content, :attachment, :course_id)
    end

  
    
   

  
end

