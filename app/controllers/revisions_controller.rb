class RevisionsController < ApplicationController
  def show
    @chapter = Chapter.find params[:chapter_id]
    @version = @chapter.versions.find params[:id]
  end

end
