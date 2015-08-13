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
  
  def thankyou
    params.each do |k, v| 
      puts "#{k}, #{v}"      
    end    
  end
end
