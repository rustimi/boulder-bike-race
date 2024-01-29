class PagesController < ApplicationController

  def home
  end

  def photos
    flickr= Flickr.new "eec935e4108558f22596a8c810b943f3", "12b5c3d7178a1c69"

    args = {
      tags: "BoulderBikeTour,bikerace",
      per_page: 42,
      page: params[:id]
    }

    @photos = []
    flickr.photos.search(args).each do |photo|
      @photos << Flickr.url(photo)
    end

    current_param_id = params[:id].to_i
    if current_param_id > 1
      @page_id_prev = current_param_id - 1
      @page_id_next = current_param_id + 1
    else
      @page_id_next = 2
    end

  end
end
