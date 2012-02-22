#!/usr/bin/ruby
require 'rubygems'
require 'gowalla'
require './config.rb'

gowalla = Gowalla::Client.new(:username => GOWALLA_USERNAME, :password => GOWALLA_PASS, :api_key => GOWALLA_API_KEY)
spotsurls = gowalla.visited_spots_urls
spotsurls.each do |spoturl|
  spotnum = spoturl.split('/')[-1]
  spotinfo = gowalla.spot(spotnum)
  puts spotinfo.name + " in " + 
    (spotinfo.address.locality.nil? ? "Unknown" : spotinfo.address.locality) + 
    (spotinfo.address.region.nil? ? '' : ", #{spotinfo.address.region}") +
    " (http://gowalla.com" + spoturl + ")"
  sleep(3) 
end
