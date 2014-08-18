class Spree::Admin::OrdercupController < Spree::Admin::ResourceController
  before_filter :get_ordercup_path, :only => [:index]
     
  def index
    if request.post?
      unless params[:connected].blank? && params[:api_key].blank? && params[:store_url].blank?
        if params[:connected].equal?(true)
          Spree::Ordercup.create(connected: true, api_key: params[:api_key], store_url: params[:store_url])
        end        
      end  
    end  
    @store_connected = Spree::Ordercup.all.length
    @errors = params[:errors] unless params[:errors].blank?
  end
  
  protected # use this in Controllers please, not private

  def get_ordercup_path
     if Rails.env.production?
       @ordercup_path = "https://ship.ordercup.com/connect-to-ordercup"
     elsif Rails.env.staging?
       @ordercup_path = "https://ship.ordercup4.com/connect-to-ordercup"
     else
       @ordercup_path = "http://localhost:3000/connect-to-ordercup"
     end        
  end     
  
end
