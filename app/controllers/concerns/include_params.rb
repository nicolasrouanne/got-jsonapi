module IncludeParams
  def render_error(status:, message:)
    render json: {
      error: message
    }, status: status
  end

  def include_params
    params[:include]&.split(',')
  end

  # :nocov:
  def permitted_relationships
    raise NotImplementedError
  end
  # :nocov:

  def valid_include_params?
    include_params.blank? || include_params.all? { |param| permitted_relationships.include?(param.to_sym) }
  end

  def check_include_params
    return if valid_include_params?

    invalid_include_params_error
  end

  def invalid_include_params_error
    message = "Invalid include parameter provided. Valid parameters are #{permitted_relationships}"
    render_error(status: :bad_request, message: message)
  end

  def include(*default_models)
    include_params.present? ? include_params : default_models
  end
end