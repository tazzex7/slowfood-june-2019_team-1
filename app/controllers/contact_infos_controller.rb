class ContactInfosController < ApplicationController
  def index
    @contact_infos = ContactInfo.all
  end

  def new
    @contact_info = ContactInfo.new
  end

  def edit
    @contact_info = ContactInfo.find(params[:id])
  end

  private
    def contact_info_params
      params.require(:contact_info).permit(:name, :address, :number, :content)
   end
end