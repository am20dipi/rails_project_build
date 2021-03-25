class UsersController < ApplicationController

    def index
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            # log them in, since they are now signed up
            session[:user_id] == @user.id

            #redirect to the show page, "@user" is an abstraction of the user_path
            redirect_to @user 
        else
            render :new
        end

    end

    def show
    end

    def update
    end


    private
        def user_params
            params.require(:user).permit(:name, :email, :password)
        end


end
