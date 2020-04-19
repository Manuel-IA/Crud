class ClientsController < ApplicationController

    before_action :set_client, only: [:edit, :update, :show, :destroy]

    def index
        #List of all clients
        @clients = Client.all
    end

    def new
        @client = Client.new
    end

    def create
        @client = Client.new client_params
        unless @client.avatar.attached? 
            @client.avatar.attach(io: File.open('./app/assets/images/index.jpeg'), filename: 'index.jpeg', content_type: 'image/jpeg')
        end 
        if @client.save
          flash[:notice] = "Client successfully created"
          redirect_to @client
        else
          render 'new'
        end
    end
    
    def show
    end
    
    def edit
    end 

    def update
        @client.update client_params
        if @client.update_attributes( client_params )
          flash[:notice] = "Client was successfully updated"
          redirect_to @client
        else
          render 'edit'
        end
    end

    def destroy
        @client.destroy
        if @client.destroy
            flash[:notice] = 'Client was successfully deleted.'
            redirect_to clients_path
        else
            redirect_to clients_path
        end
    end
    

    private
    def client_params
        params.require(:client).permit(:name, :birthdate, :avatar, :identification, :gender_id,
        :identificationType_id, :country_id, :department_id, :city_id )
    end

    def set_client
        @client = Client.find params[:id]
    end
end
