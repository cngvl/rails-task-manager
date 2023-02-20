class TasksController < ApplicationController
  def index
    Task.all
  end

  def show
    @task = Task.find(params[:id])
  end
end
