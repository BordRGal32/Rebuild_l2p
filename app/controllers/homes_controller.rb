class HomesController < ApplicationController
  def index
    @chapters = Chapter.all
    render('homes/index.html.erb')
  end
end
