class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to users_path
        else
            render :new
    end
    
    def edit
    end

    def update
    end
    
    def delete
    end

end
