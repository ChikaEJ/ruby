class Admin::PhotographersController < AdminController
  before_action :set_photographer, only: [:edit, :update, :destroy]
  # before_action :check_user
  def new
    @photographer = Photographer.new
    #code
  end
  def admin_show
    @photographer = Photographer.find(params[:id])
    #code
  end
  def index
    @photographers = Photographer.all
    #code
  end
  def create
    @photographer = Photographer.create(photographer_params)
    if @photographer.save
      upload_picture
      redirect_to @photographer
    else
      render 'new'
    end
  end
  def edit

  end
  def update
    if @photographer.update(photographer_params)
      upload_picture
      redirect_to @photographer
    else
      render 'edit'
    end
    #code
  end
  def destroy
    # @photographer = Photographer.find(params[:id])
    @photographer.destroy
    redirect_to admin_photographers_path
    #code
  end
  private

  def upload_picture
    uploaded_file = params[:photographer][:picture]
    unless uploaded_file.nil?
      new_file_path = Rails.root.join('public', 'avatars', @photographer.id.to_s)
      File.open(new_file_path, 'wb') do |file|
        file.write uploaded_file.read
      end
    end
  end

  def set_photographer
    @photographer = Photographer.find(params[:id])
    #code
  end

  def photographer_params
    params.required(:photographer).permit(:name, :lastname, :email, :phone)
    #code
  end

end
