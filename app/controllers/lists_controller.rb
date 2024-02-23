class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    @list = List.new(lists_params)
    if @list.save
      redirect_to list_url(@list)
    else
      render :new
    end
  end

  def new
    @list = List.new
  end

  def edit
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy!
    redirect_to lists_url, notice: "List was successfully destroyed.", status: :see_other
  end

  private

  def lists_params
    params.require(:list).permit(:name,  :movie_id,  :bookmark_id , :list_id)
  end
end
