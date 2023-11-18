class PhotosController < ApplicationController

  def index
    @photo_list = Photo.all.order({:created_at => :desc})
    render({:template => "photo_templates/photo_index"})
  end

  def show
    @photo = Photo.where({:id => params.fetch("photo_id")}).at(0)
    render({:template => "photo_templates/photo_show"})
  end

  def insert
    photo = Photo.new
    photo.image = params.fetch("image")
    photo.caption = params.fetch("caption")
    photo.owner_id = params.fetch("owner_id")
    photo.save
    redirect_to("/photos/#{photo.id}")
  end

  def update
    photo = Photo.where({:id => params.fetch("photo_id")}).at(0)
    photo.image = params.fetch("new_image")
    photo.caption = params.fetch("new_caption")
    photo.save
    redirect_to("/photos/#{photo.id}")
  end

  def destroy
    photo = Photo.where({:id => params.fetch("photo_id")}).at(0)
    photo.destroy()
    redirect_to("/photos")
  end
  
end
