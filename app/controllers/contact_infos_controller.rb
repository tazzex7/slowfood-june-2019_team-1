class ContactInfosController < ApplicationController
  def index
    @contact_infos = Contact_Info.all
  end

  def new
    @contact_info = Contact_Info.new
  end
  

  def edit
    @contact_info = Contact_Info.find(params[:id])
  end

  private
    def contact_info_params
      params.require(:contact_info).permit(:name, :address, :number, :content)
   end
end