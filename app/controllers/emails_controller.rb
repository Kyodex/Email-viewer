class EmailsController < ApplicationController
  def index
      @unread_emails = Email.where(complete: false)
      @read_emails = Email.where(complete: true)
    end

    def new
      @email = Email.new
    end

    def create
      @email = Email.create!(allowed_params)

      redirect_to emails_url
    end

    def update
      @email = Email.find(params[:id])
      @email.update_attributes!(allowed_params)

      redirect_to emails_url
    end

    def destroy
      @email = Email.destroy(params[:id])

      redirect_to emails_url
    end

    private

    def allowed_params
      params.require(:email).permit(:object, :body, :read)
    end
  end
end
