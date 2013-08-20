class TasksController < ApplicationController
  
  def index
    if params[:category_id]
      @category = Category.find(params[:category_id])
      @tasks = @category.tasks.undone.paginate(:page => params[:page], :per_page => 10)
    else
      @tasks = Task.undone.paginate(:page => params[:page], :per_page => 10)
    end
  end

  def done
    if params[:category_id]
      @category = Category.find(params[:category_id])
      @tasks = @category.tasks.done.paginate(:page => params[:page], :per_page => 10)
    else
      @tasks = Task.done.paginate(:page => params[:page], :per_page => 10)
    end
    render :index
  end

  def search
    @tasks = Task.undone
    @tasks = @tasks.search(params[:query]) if params[:query].present?
    @tasks = @tasks.paginate(:page => params[:page])
    render :index
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def edit
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.create(params[:task])
    if @task.save
      redirect_to @task
    else
      render :new
    end
  end

  def update
    @task = Task.find(params[:id])
    if @task.update_attributes(params[:task])
      redirect_to @task
    else
      render :edit
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to :tasks
  end

  def finish
    @task = Task.find(params[:id])
    @task.update_attribute(:done, true)
    redirect_to :back
  end

  def restart
    @task = Task.find(params[:id])
    @task.update_attribute(:done, false)
    redirect_to :back
  end
end