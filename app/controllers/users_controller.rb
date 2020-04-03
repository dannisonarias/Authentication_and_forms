class UsersController < ApplicationController
    def new
        # instantiate User to use with form_for tag
        @user = User.new()
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to new_user_path
        else
            render :new
        end
    end

    def edit
        
    end

    def user_params
        params.require(:user).permit(:email,:password,:username)
    end
end
