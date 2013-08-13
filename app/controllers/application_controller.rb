class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected
    class NotFound     < StandardError; end
    class AccessDenied < StandardError; end

    rescue_from Exception,                           with: :render_500 if Rails.env.production?
    rescue_from NotFound,                            with: :render_404
    rescue_from ActionController::RoutingError,      with: :render_404
    rescue_from ActionController::UnknownController, with: :render_404
    rescue_from ActiveRecord::RecordNotFound,        with: :render_404
    #rescue_from ActionController::AccessDenied,      with: :render_422
    rescue_from AccessDenied,                        with: :render_422

    def render_404(exception)
      @not_found_path = request.path

      respond_to do |format|
        format.html { render 'errors/error_404', status: 404 }
        format.all  { render nothing: true,      status: 404 }
      end
    end

    def render_422(exception)
      respond_to do |format|
        format.html { render 'errors/error_422', status: 422, altert: exception.message }
        format.all  { render nothing: true,      status: 422 }
      end
    end

    def render_500(exception)
      @error = exception
      respond_to do |format|
        format.html { render 'errors/error_500', status: 500 }
        format.all  { render nothing: true,      status: 500 }
      end
    end
end
