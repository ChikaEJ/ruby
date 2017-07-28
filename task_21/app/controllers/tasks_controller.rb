class TasksController < ApplicationController
  def new
  end

  def create
    @task = Task.new(tasks_params)
    @task.status = 'new'
    @task.save

    redirect_to root_path
  end
  def index
  @tasks = Task.all#code
  end

  def show
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update({status: 'done'})

    redirect_to root_path
  end
  def destroy_all_done
    @tasks = Task.all
    @tasks.each do |task|
      if task.status == 'done'
        task.destroy
      end
    end
    redirect_to root_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to root_path
  end

  private
  def tasks_params
    params.require(:task).permit(:title, :status)
  end
end
