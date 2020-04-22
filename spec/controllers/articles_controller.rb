require 'rails_helper'

describe ArticlesController do
  context "GET #index" do
    it "return a success response" do
      get :index
      expect(response).to be_succes
    end
  end
end