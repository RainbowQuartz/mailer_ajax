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

  end

  def destroy
  end

  private
  def email_params
    params.permit(:object, :body)
  end
end