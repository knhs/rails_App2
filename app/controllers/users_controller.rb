class UsersController < ApplicationController
    def index
        @users = User.all
    end
    
    def new
        @user = User.new
    end

    def create
        @user = User.create(uesr_params)
    end

    def show
        @user = User.find(params[:id])
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        user = User.find(params[:id])
        user.update(uesr_params)
    end

    def destroy
        user = User.find(params[:id])
        user.delete
    end

    private

    def uesr_params
        params.require(:user).permit(:name, :age)
    end
end