require 'flickraw'

class PhotosController < ApplicationController

  before_filter :set_albums
  before_filter :set_photoset_hash, :only => :show

  def index
  
    
  
  end

  def show
  
    album_name = params[:id]
    album_id = @album_names[album_name]
    @album = flickr.photosets.getPhotos(:photoset_id => album_id)
    
    info = flickr.photosets.getInfo(:photoset_id => album_id)
    @title = info.title
    @description = info.description
  
  end
  
  private
  
  def set_albums
    # user id for "calthetachi" flickr account
    flickr_user_id = "97852663@N04"
    
    @albums = flickr.photosets.getList(:user_id => flickr_user_id)
  end
  
  def set_photoset_hash
    
    @album_names = {}
    @albums.each do |album|
      @album_names[album.title.parameterize] = album.id
    end
    
  end
  
end
