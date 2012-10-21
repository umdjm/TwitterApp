require 'rubygems'
require 'open-uri'
require 'json'
require 'httparty'


class StaticPagesController < ApplicationController
  include ApplicationHelper

  def home

    @tweets = []
    @response = TwitterSearch.search("Lakeside Software", 10)
    @max_id = @response["max_id"]
    @tweets += @response["results"]

    2.upto(10) do |pagenum|
      @response =  TwitterSearch.search("Lakeside Software", 10, @max_id, pagenum)

      break if @response["results"].count == 0

      @tweets += @response["results"]
      @counter = pagenum
    end

  end
end
