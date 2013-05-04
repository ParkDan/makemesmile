class VidsController < ApplicationController

  def index
    @vids = Vid.all
  end

  def show
    @vid = Vid.find_by_id(params[:id])
  end

  def new
    @vid = Vid.new
  end

  def create
    @vid = Vid.new
    @vid.source = params[:source]
    @vid.caption = params[:caption]
    @vid.rating = params[:rating]

    if @vid.save
            redirect_to vids_url
          else
      render 'new'
    end
  end

  def edit
    @vid = Vid.find_by_id(params[:id])
  end

  def update
    @vid = Vid.find_by_id(params[:id])
    @vid.source = params[:source]
    @vid.caption = params[:caption]
    @vid.rating = params[:rating]

    if @vid.save
            redirect_to vids_url
          else
      render 'edit'
    end
  end

  def destroy
    @vid = Vid.find_by_id(params[:id])
    @vid.destroy
        redirect_to vids_url
      end
end
