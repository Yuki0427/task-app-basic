class TasksController < ApplicationController
  
  def new
  end
  
  def create
    params[:task_description]
    
    redirect_to tasks_index_url
  end
  
  def index
  end
end
