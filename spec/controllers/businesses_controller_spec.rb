require 'spec_helper'

describe BusinessesController do

  context "rendering the index page" do 

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

  end

  context "creating a new business" do 

    it "should redirect to index with a notice on successful save" do

    end

    it "should re-render new template on failed save" do 

    end

  end

end