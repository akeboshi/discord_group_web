class Api::V1::ApiController < ActionController::API
  rescue_from Exception, with: :render_status_500

  rescue_from ActiveRecord::RecordNotFound, with: :render_status_404

  def render_status_404(exception)
    render json: { errors: [exception] }, status: :not_found
  end

  def render_status_500(exception)
    render json: { errors: [exception] }, status: :internal_server_error
  end
end
