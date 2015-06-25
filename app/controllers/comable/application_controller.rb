module Comable
  class ApplicationController < ActionController::Base
    include Comable::ApplicationHelper
    #protect_from_forgery with: :exception
    rescue_from StandardError, with: :render_500
    rescue_from ActiveRecord::RecordNotFound, with: :render_404
    rescue_from ActionController::RoutingError, with: :render_404
    def render_404(exception = nil)
      if exception
        logger.info "Rendering 404 with exception: #{exception.message}"
      end
      render template: "errors/error_404", status: 404, layout: 'comable/error'
    end

    def render_500(exception = nil)
      if exception
        logger.info "Rendering 500 with exception: #{exception.message}"
      end
      render template: "errors/error_500", status: 500, layout: 'comable/application'
    def show; raise env["action_dispatch.exception"]; end
    end
  end
end
