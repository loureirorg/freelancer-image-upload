class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, except: [:upload]

  def upload
    require 'base64'

    str = params[:imageData][params[:imageData].index('base64,')+7..-1]
    img = Base64.decode64(str)
    File.open("#{Rails.root}/public/current.jpg", 'wb') { |f| f.write(img) }
    render json: {success: true}
  end

  def index
  end
end
