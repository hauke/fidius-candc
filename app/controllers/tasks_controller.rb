class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find params[:id]
  end

  def clean
    raise "Not Implemented"
    redirect_to :tasks
  end

  def scan
    #params[:subnet]
    raise "Not Implemented"
  end

  def addroutetosession
    #params[:sessionID]
    raise "Not Implemented"
  end

  def execreconnaissance
    #params[:sessionID]
    raise "Not Implemented"
  end

  def arpscannsession
    #params[:sessionID]
    raise "Not Implemented"
  end

  def installpersistence
    #params[:sessionID]
    raise "Not Implemented"
  end

  def startbrowserautopwn
    #params[:address]
    raise "Not Implemented"
  end
end
