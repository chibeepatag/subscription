require 'net/http'
require "uri"

class OptionsController < ApplicationController
  def braintree
  end

  def recurly
  end

  def chargebee
  end

  def chargify
  end

  def stripe
  end

  def worldpay
  end

  def worldpay_form
  end
  
  def worldpay_pay   
    puts '***************** worldpay_pay***************'
    uri = URI.parse("https://api.worldpay.com/v1/orders")    
    # Full control
    http = Net::HTTP.new(uri.host)
    request = Net::HTTP::Post.new(uri.request_uri)
    request.set_form_data({"token" => params[:token], 
                           "orderDescription" => "Premium",
                           "amount" => "30",
                           "currencyCode" => "GBP"})   
    request['Content-Type'] = 'application/json'
    request['Authorization'] = 'T_S_98beb72d-1f11-4f17-9d6b-6ad040c101e6'        
    response = http.request(request)
    puts '***************** end ***************'
    render :json => response.body, content_type: "application/json"
  end

  def thankyou
    params.each do |k, v|
      puts "#{k}, #{v}"
    end
  end
end
