class EmailsController < ApplicationController
  def index
    @emails = Email.all
  end


  def create
    @email = Email.create(email_params)
  end

  def edit

  end

  def show
    @email = Email.find(params[:id])
    @email.update(read: true)
  end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy

    respond_to do |format|
      format.html { redirect_to emails_url }
      format.json { head :no_content }
      format.js   { render :layout => false }
    end
  end

  private
  def email_params
    params.permit(:object, :body)
  end
end
