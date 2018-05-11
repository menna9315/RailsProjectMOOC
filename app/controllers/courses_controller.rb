class CoursesController < InheritedResources::Base
  before_action :authenticate_user!
  

  def show
    @course= Course.find(params[:id])
    @lectures= Course.find(params[:id]).lectures  
  end


  private

    def course_params
      params.require(:course).permit(:title)
    end


  


  
end

