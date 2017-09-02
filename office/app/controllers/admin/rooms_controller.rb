class Admin::RoomsController < AdminController
  def new
    @room = Room.new
  end

  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
    @equipment = Equipment.all
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to [:admin, @room]
    else
      render 'new'
    end
  end

  def edit
    @room = Room.find(params[:id])
  end

  def update
    @room = Room.find(params[:id])
    if @room.update(room_params) then
      redirect_to [:admin, @room]
    else
      render 'edit'
    end
  end

  def destroy
    @room = Room.destroy(params[:id])
    redirect_to admin_rooms_path
  end

  private

  def room_params
    params.require(:room).permit(:title, :number)
  end
end
