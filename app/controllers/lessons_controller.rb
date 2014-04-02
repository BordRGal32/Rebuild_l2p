class LessonsController < ApplicationController
  def index
    @lesson = Lesson.new
    @lessons = Lesson.all
    render('lessons/index.html.erb')
  end

  def show
    @lesson = Lesson.find(params[:id])
    render('lessons/show.html.erb')
  end

  def delete
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    redirect_to('/lessons/')
  end

  def create
     @lesson = Lesson.new(params[:lesson])
     @lessons = Lesson.all
     if @lesson.save
      redirect_to('/lessons/')
    else
      render('lessons/index.html.erb')
    end
  end


  def edit
    @lesson = Lesson.find(params[:id])
    render('lessons/edit.html.erb')
  end

  def update
    @lesson = Lesson.find(params[:id])
    if @lesson.update(params[:lesson])
      redirect_to("/lessons/#{@lesson.id}")
    else
      render('/lessons/edit.html.erb')
    end
  end
end
