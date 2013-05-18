class CommentsController < ApplicationController



	def index
		@comments = Comment.all

			respond_to do |format|
		format.html
		format.json { render :json => @comments }

		end
	end

	def create
		@comment = Comment.new(params[:comment])
		@comment.save!
			render :template => 'comments/comments'
		# respond_to do |format|
		# 	format.html do 
		# 		render :partial => 'comments/comment', :locals => { :comment => @comment }, 
		# 		:content_type => 'text/html'#<== same thing as render @comment 
		# 	end
		# 	format.json { render :json => @comment }
		
		# end

	end
	 
	def destroy
   	 	@comment = Comment.find(params[:id])
    	@comment.destroy
    	redirect_to zipcode_path
	end

end
