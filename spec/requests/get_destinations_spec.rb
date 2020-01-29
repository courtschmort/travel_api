require 'rails_helper'

describe "get all destinations route", :type => :request do
  let!(:destinations) { FactoryBot.create_list(:destination, 18)}

  before { get '/destinations'}

  it 'returns all destinations' do
    expect(JSON.parse(response.body).size).to eq(18)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
