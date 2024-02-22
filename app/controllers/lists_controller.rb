class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    @list = List.new(lists_params)
    @list.save
    redirect_to lists_url
  end

  def new
    @lists = List.new
    end

  def edit
  end

  def destroy
    @list.destroy!
        redirect_to lists_url, notice: "List was successfully destroyed.", status: :see_other
  end

  private

  def lists_params
    params.require(:list).permit(:name )
  end
end
