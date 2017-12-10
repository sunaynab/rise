class Api::IncidentsController < ApplicationController
  def index
    @incidents = Incident.all
  end
  
  def create
    @incident = Incident.new(params)
    if !@incident.save
      render json: @incident.errors.full_messages, status: 422
    end
  end
  
  def show
    @incident = Incident.find_by_id(params[:id])
    unless @incident
      render json: @incident.errors.full_messages, status: 404
    end
  end
  
  def update
    @incident = Incident.find_by_id(params[:id])
    if @incident.update(status: params[:status])
      render "api/incidents/show"
    else
      render json: @incident.errors.full_messages, status: 422
    end
  end

end
