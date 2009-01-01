module BuildoutsHelper
  def link_to_buildout
    if Rails.env == 'development' && params[:controller] != 'buildouts'
      link_to 'view buildout', buildout_path(:c => params[:controller], :a => params[:action])
    end
  end
end