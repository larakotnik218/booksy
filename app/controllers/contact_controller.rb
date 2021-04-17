class ContactController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  protect_from_forgery with: :null_session


  def index
    @contact = Contact.new(params[:contact])
  end

  def show
  end

  def send_user_email
    @contact = Contact.find(params[:contact])
  end

  def create
    success = 0;
    @contact = Contact.new(params[:contact])
    @contact.request = request
    respond_to do |format|
      if @contact.deliver
        @contact = Contact.new
        format.html { render 'info', notice: 'Message was sent!' }
      else
        format.html { render 'index', alert: 'There was something wrong...' }
      end
    end
  end
end
