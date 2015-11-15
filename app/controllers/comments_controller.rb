class CommentsController < ApplicationController

	# http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy
	
	def create
	    @tutor = Tutor.find(params[:tutor_id])
	    @comment = @tutor.comments.create(comment_params)
	    redirect_to tutor_path(@tutor)
	 end

	def destroy
		@tutor = Tutor.find(params[:tutor_id])
		@comment = @tutor.comments.find(params[:id])
		@comment.destroy
		redirect_to tutor_path(@tutor)
	end

	private
		def comment_params
		  params.require(:comment).permit(:commenter, :body)
		end
end
