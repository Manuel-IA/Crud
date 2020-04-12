class UsersController < ApplicationController

    def index
        #List of all users
        @users = User.all    
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new user_params
        @user.save
        redirect_to @user
        #render plain: params[:user].inspect
    end

    def show
        @user = User.find params[:id]
    end

    def edit 
        @user = User.find params[:id]
    end

    def update
        @user = User.find params[:id]
        @user.update user_params
        if @user.update_attributes( user_params )
          flash[:success] = "User was successfully updated"
          redirect_to @user
        else
          flash[:error] = "Something went wrong"
          render 'edit'
        end
    end

    def destroy
        @user = User.find params[:id]
        @user.destroy
        if @user.destroy
            flash[:success] = 'User was successfully deleted.'
            redirect_to users_url
        else
            flash[:error] = 'Something went wrong'
            redirect_to users_url
        end
    end
    

    private
    def user_params
        params.require(:user).permit(:name, :birthdate )
    end
end
