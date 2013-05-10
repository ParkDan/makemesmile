class VidsController < ApplicationController

  def index
    @vids = Vid.all
  end

  def show
    @vid = Vid.find_by_id(params[:id])
    session[:vid_id]=@vid.id
  end

  def new
    @vid = Vid.new
  end


  def create_comment

    if user_signed_in?
      session[:vid_id]=params[:id]
      @comment = Comment.new
      @comment.comment = params[:comment]
      @comment.timestamp = Time.new
      @comment.user_id = current_user.id
      @comment.vid_id = params[:id]

      if @comment.save
              redirect_to vid_url(session[:vid_id])
      else
        render 'new'
      end
    end
  end

  def destroy_comment
    @comment=Comment.find_by_id(params[:comment_id])
    @comment.destroy
    redirect_to vid_url(params[:id])

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
