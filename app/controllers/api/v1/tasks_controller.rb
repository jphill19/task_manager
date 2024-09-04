class Api::V1::TasksController < ApplicationController
  def index
    tasks = Task.all
    render json: TaskSerializer.format_tasks(tasks)
  end

  def data
    tasks = Task.all
    render json: TaskSerializer.format_tasks(tasks)
  end

  def shows
    render json: Task.find(params[:id])
  end

  def create
    render json: Task.create(task_params)
  end

  def destroy
    render json: Task.delete(params[:id])
  end
  private

  def task_params
    params.require(:task).permit(:title, :description)
  end
end