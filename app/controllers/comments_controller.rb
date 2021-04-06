class CommentsController < ApplicationController
    before_action :redirect_if_not_logged_in
    before_action :find_comment, only: [:show, :edit, :update, :destroy]
    
    def index 
        if params[:brewery_id] && @brewery = Brewery.find_by_id(params[:post_id])
            @comments = @brewery.comments
        else
            @comments = Comment.all
        end
    end

    def new
        @comment = Comment.new
    end

    def create
        @comment = current_user.comments.build(comment_params)
        if @comment.save
            redirect_to @comment
        else
            render :new
        end
    end

    def show
    end

    def edit
    end

    def update
        @comment.update
        if @comment.save 
            redirect_to @comment
        else
            render :edit 
        end
    end

    def destroy
        @comment.destroy
        redirect_to brewery_path(brewery)
    end

    private

    def find_comment
        @comment = Comment.find_by(params[:id])
    end

    def comment_params
        params.require(:comment).permit(:content, :user_id, :brewery_id)
    end
end
