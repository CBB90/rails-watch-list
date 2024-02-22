class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end
  def create
    @bookmark = Bookmark.new(bookmarks_params)
    @bookmarks.save
  end
  def destroy
    @bookmark.destroy!
        redirect_to lists_url, notice: "Restaurant was successfully destroyed.", status: :see_other
  end
    def bookmarks_params
      params.require(:bookmark).permit(:movie_id, :list_id, :commment)
    end
end
