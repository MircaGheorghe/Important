require 'rails_helper'

RSpec.describe Articles, type: :controller do
    context "GET #index" do
        it "return a success response" do
            get :index
            expect(response).to be_succes
        end
    end
end