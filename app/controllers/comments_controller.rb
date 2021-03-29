class CommentsController < ApplicationController
    before_action :redirect_if_not_logged_in
    before_action :find_comment, only: [:show, :edit, :update, :destroy]
    
    def index 
        @comments = Comment.all
    end

    def new
        @comment = Comment.new
    end

    def create
        @comment = Comment.new(comment_params)
        if @comment.save
            redirect_to @comment
        else
            render :new
        end
    end

    def show
        
    end

    def update

    end

    def destroy
        
    end

    private

    def find_comment
        @comment = Comment.find_by(params[:id])
    end

    def comment_params
        params.require(:comment).permit(:content)
    end
end
