require 'rubygems'
require 'open-uri'
require 'json'
require 'httparty'
require 'resque'

class StaticPagesController < ApplicationController
  include ApplicationHelper

  def home
    if(!params[:query_id].blank?)
      Resque.enqueue(TweetsQueue, params[:query_id])
    end
  end
end
