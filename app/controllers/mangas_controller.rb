class MangasController < ApplicationController
  before_action :set_manga, only: [ :show, :edit, :update, :destroy ]

  def index
    @manga = Manga.all
  end

  def show
  end

  def new
    @manga = Manga.new
  end

  def edit
  end

  def create
    @manga = Manga.new(manga_params)
      if @manga.save
        flash[:notice] = "Manga was successfully created." 
        redirect_to @manga 
      else
        render 'new'
      end
  end

  def update
      if @manga.update(manga_params)
        flash[:notice] = "Manga was successfully updated." 
        redirect_to @manga 
      else
        render 'edit'
      end
  end

  def destroy
    @manga.destroy
    flash[:notice] = "Manga was successfully destroyed."
    redirect_to mangas_path
  end

  private
    def set_manga
      @manga = Manga.find(params[:id])
    end

    def manga_params
      params.require(:manga).permit(:title, :summary, :vcode)
    end
end
