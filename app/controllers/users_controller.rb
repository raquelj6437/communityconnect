class UsersController < ApplicationController
    # layout 'style.css'
    def index
    end

    def create
        user = User.new(user_params)
        if user.save
            session[:user_id] = user.id
            redirect_to opportunities_path, notice: "Registered Successfully"
        else
            flash[:register_errors] = user.errors.full_messages
            redirect_to '/', notice: "Error. Please register again"
        end
    end

    private

    def user_params
        params.require(:user).permit(:name,:email,:password,:password_confirmation)
    end
end
