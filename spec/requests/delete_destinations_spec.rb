
require 'rails_helper'

describe "post a destination route", :type => :request do

  before do
    post '/destinations', params: { :name => 'test_name', :city => 'test_city', :country => 'test_country' }

    delete '/destinations/.id', params: { :name => 'test_name', :city => 'test_city', :country => 'test_country' }
  end
end
