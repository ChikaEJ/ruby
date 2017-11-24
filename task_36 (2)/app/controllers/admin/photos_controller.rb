class Admin::PhotosController < AdminController
  before_action :set_photo, only: [:update, :edit, :destroy]

  def new
    @photo = Photo.new
    #code
  end
  def index
    @photos = Photo.all
    #code
  end
  def create
    @photo = Photo.create(photo_params)
    if @photo.save
      upload_picture
      redirect_to admin_photos_path
    else
      render 'new'
    end
  end
  def edit
    #code
  end
  def update
    if @photo.update(photo_params)
      upload_picture
      redirect_to admin_photos_path
    else
      render 'edit'
    end
  end
  def destroy
    @photo.destroy
    redirect_to admin_photos_path
    #code
  end
  private



  def upload_picture
    uploaded_file = params[:photo][:picture]
    unless uploaded_file.nil?
      new_file_path = Rails.root.join('public', 'uploads', @photo.id.to_s)
      File.open(new_file_path, 'wb') do |file|
        file.write uploaded_file.read
      end
    end
  end

  def set_photo
    @photo = Photo.find(params[:id])
    #code
  end
  def photo_params
    params.required(:photo).permit(:title, :description, :picture, :photographer_id)
    #code
  end
end
