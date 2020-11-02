require 'rails_helper'

RSpec.describe WinesController, type: :controller do
    describe "GET index" do
        context "Singed in" do
        
        before do
            user = User.create(email: "test@test.com")
            login_as(user, :scope => :user)
        end
       

        it "returns a successful response" do
            get :index
        expect(response).to be_successful
        end
        
        it "renders the index template" do
            get :index
        expect(response).to render_template( "index" )
        end
    end
end
end