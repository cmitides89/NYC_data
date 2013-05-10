class CommentsController < ApplicationController



	def index
		@comments = Comment.all
	end

	def create
		@comment = Comment.new(params[:comment])
		@comment.save!
	
		respond_to do |format|
			format.html do 
				render :partial => 'comments/comment', :locals => { :comment => @comment }, 
				:content_type => 'text/html'#<== same thing as render @comment 
			end
		
		end

	end
	 
	def destroy
   	 	@comment = Comment.find(params[:id])
    	@comment.destroy
    	redirect_to root_path
	end

end