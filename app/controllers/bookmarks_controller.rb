class BookmarksController < ApplicationController

  def new
    @bookmark = Bookmark.new
    @movies = Movie.all
  end

  def create
    @bookmark.list = @list
  end

  private

  def bookmark_params
    params.require(:list).permit(:comment)
  end
end
