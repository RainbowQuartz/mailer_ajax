class HomeController < ApplicationController
  def index
    @email = Email.all
  end

  def show
  end

  def new
    @email = Email.new
  end

  def create
    @email = Email.create(params)

  end

  def edit

  end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy

    respond_to do |f|
      f.html {redirect_to root_path}
    end
  end

  private

  def email_params
    params.permit(:object, :body)
  end
end
