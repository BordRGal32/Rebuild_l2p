class SectionsController < ApplicationController
  def index
    @section = Section.new
    @sections = Section.all
    render('sections/index.html.erb')
  end

  def show
    @section = Section.find(params[:id])
    render('sections/show.html.erb')
  end

  def delete
    @section = Section.find(params[:id])
    @section.destroy
    redirect_to('/sections/')
  end

  def create
     @section = Section.new(params[:section])
     @sections = Section.all
     if @section.save
      redirect_to('/sections/')
    else
      render('sections/index.html.erb')
    end
  end


  def edit
    @section = Section.find(params[:id])
    render('sections/edit.html.erb')
  end

  def update
    @section = Section.find(params[:id])
    if @section.update(params[:section])
      redirect_to("/sections/#{@section.id}")
    else
      render('/sections/edit.html.erb')
    end
  end
end
