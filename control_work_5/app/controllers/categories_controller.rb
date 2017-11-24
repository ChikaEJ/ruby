class CategoriesController < InheritedResources::Base
before_action :authenticate_user!, only: [:update, :new, :create, :destroy]
      load_and_authorize_resource
  private

    def category_params
      params.require(:category).permit(:title, :description)
    end
end
