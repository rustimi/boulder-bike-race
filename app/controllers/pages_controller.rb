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

  def location
    file_path = Rails.root.join('config', 'google-maps-api.key')

    if File.exist?(file_path)
      File.open(file_path, 'r') do |file|
        # Read the content of the file (assuming it contains only one line)
        @MAP_API_SECRET = file.readline.strip
      end
    end

    @riders_info = Rider.all.map do |rider|
      {
        'fname': rider.fname,
        'lname': rider.lname,
        'lat': rider.latitude,
        'long': rider.longitude,
        'url': rider_path(rider)
      }
    end

  end
end
