require_relative 'spec_helper'

describe "index_controller" do

  describe "GET /" do
    it "responds with a 200" do
      get '/'
      expect(last_response.status).to eq(200)
    end
  end


end
