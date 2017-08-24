class Admin::AuthorsController < AdminController

  def new
    @author = Author.new
  end

  def index
    @authors = Author.all
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      upload_picture
      redirect_to admin_authors_path
    else
      render 'new'
    end
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])
    if @author.update(author_params)
      upload_picture
      redirect_to @author
    else
      render 'edit'
    end
  end

  def destroy
    @author = Author.destroy(params[:id])
    redirect_to authors_path
  end

  private

  def upload_picture
    uploaded_file = params[:author][:picture]
    unless uploaded_file.nil?
      new_file_path = Rails.root.join('public', 'author', @author.id.to_s)
      File.open(new_file_path, 'wb') do |file|
        file.write uploaded_file.read
      end
    end
  end

  def author_params
    params.require(:author).permit(:name, :describtion)
  end

end
