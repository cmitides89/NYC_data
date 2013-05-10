require 'spec_helper'

describe CommentsController do
	     before do 
       3.times {Comment.create}
     end
   describe 'GET to index' do 
      before do 
        get :index
      end

      it "should respond with a status 200" do 
          expect(response).to be_success
      end
   end
    describe 'Creating comments should post to comments partial' do 
    	before do 
    		get :create
    	end

    	it "should respond with a status 200" do

    	end
   	end
end
