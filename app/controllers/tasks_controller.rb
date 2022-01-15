class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find_by(title: params[:title])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save

    redirect_to task_path(@task.title)
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
