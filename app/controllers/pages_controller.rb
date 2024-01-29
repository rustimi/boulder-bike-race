class PagesController < ApplicationController

  def home
  end

  def photos
    flickr= Flickr.new "eec935e4108558f22596a8c810b943f3", "12b5c3d7178a1c69"
    photos = flickr.photos.search(tags: "boulder")
    @photo = Flickr.url(photos[0])
  end
end
