class Admin::EquipmentController < AdminController
  def new
    @equipment = Equipment.new
  end
  def main
    @genres = Genre.all
    @equipments = Equipment.all
  end

  def index
    @equipment = Equipment.all
  end

  def show
    @equipment = Equipment.find(params[:id])
  end

  def create
    @equipment = Equipment.new(equipment_params)
    if @equipment.save
      upload_picture
      redirect_to [:admin, @equipment]
    else
      render 'new'
    end
  end

  def edit
    @equipment = Equipment.find(params[:id])
  end

  def update
    @equipment = Equipment.find(params[:id])
    if @equipment.update(equipment_params)
      upload_picture
      redirect_to [:admin, @equipment]
    else
      render 'edit'
    end
  end

  def destroy
    @equipment = Equipment.destroy(params[:id])
    redirect_to admin_equipment_index_path
  end

  private

  def upload_picture
    uploaded_file = params[:equipment][:image]
    unless uploaded_file.nil?
      new_file_path = Rails.root.join('public', 'uploads', @equipment.id.to_s)
      File.open(new_file_path, 'wb') do |file|
        file.write uploaded_file.read
      end
    end
  end

  def equipment_params
    params.require(:equipment).permit(:title, :equipment_type, :description, :image, :room_id)
  end
end
