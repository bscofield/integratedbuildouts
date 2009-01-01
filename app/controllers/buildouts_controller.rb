class BuildoutsController < ApplicationController
  skip_before_filter :check_for_buildout
  skip_before_filter :store_location
  
  def show
    template_name = "buildouts/#{params[:c]}/#{params[:a]}"
    render :template => template_name
  end
end