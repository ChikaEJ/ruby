class NoticesController < InheritedResources::Base
  before_action :authenticate_user!, only:  [:edit, :new, :create, :update, :delete]
  layout 'layouts/_main', only: :index
      load_and_authorize_resource


  private

    def notice_params
      params.require(:notice).permit(:title, :user_id, :category_id, :content, :contacts)
    end
end
