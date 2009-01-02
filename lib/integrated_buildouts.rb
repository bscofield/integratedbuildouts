module IntegratedBuildouts
  def self.included(base)
    base.class_eval do
      before_filter :check_for_buildout  if Rails.env == 'development'
    end
  end

  def check_for_buildout
    if request.request_uri.ends_with? ".buildout"
      redirect_to buildout_path(:c => params[:controller], :a => params[:action])
    end
  end
end
