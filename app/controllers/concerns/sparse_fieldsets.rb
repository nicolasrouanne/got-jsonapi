module SparseFieldsets 
  def fields
    field_params = params[:fields]
    field_params.to_unsafe_h.transform_values { |v| v.present? && v&.split(',') } unless field_params.blank?
  end
end