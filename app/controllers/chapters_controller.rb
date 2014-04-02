class ChaptersController < ApplicationController
  def index
    @chapter = Chapter.new
    @chapters = Chapter.all
    render('chapters/index.html.erb')
  end

  def show
    @chapter = Chapter.find(params[:id])
    render('chapters/show.html.erb')
  end

  def delete
    @chapter = Chapter.find(params[:id])
    @chapter.destroy
    redirect_to('/chapters/')
  end

  def create
     @chapter = Chapter.new(params[:chapter])
     @chapters = Chapter.all
     if @chapter.save
      redirect_to('/chapters/')
    else
      render('chapters/index.html.erb')
    end
  end


  def edit
    @chapter = Chapter.find(params[:id])
    render('chapters/edit.html.erb')
  end

  def update
    @chapter = Chapter.find(params[:id])
    if @chapter.update(params[:chapter])
      redirect_to("/chapters/#{@chapter.id}")
    else
      render('/chapters/edit.html.erb')
    end
  end
end
