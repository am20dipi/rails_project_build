class CommentsController < ApplicationController
    before_action :redirect_if_not_logged_in
    before_action :find_comment, only: [:show, :edit, :update, :destroy]
    

    def new
        @comment = Comment.new
    end

    def show
    end

    def create
        @comment = Comment.create(comment_params)
        if @comment.valid?
            redirect_to brewery_path(@brewery.id)
        else
            render :new
        end
    end

    

    def edit
    end

    def update
        @comment.update
        if @comment.save 
            redirect_to brewery_path(@brewery.id)
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
        params.require(:comment).permit(:content)
    end
end
