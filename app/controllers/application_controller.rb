class ApplicationController < ActionController::API
  include Kaminari::Helpers::HelperMethods
  
  def serialize_options(collection = [])
    {
      meta: meta(collection),
      links: links(collection)
    }
  end

  private

  def meta(collection)
    {
      count: collection.empty? ? 1 : collection.count,
      total_count: collection.empty? ? 1 : collection.total_count,
      total_pages: collection.empty? ? 1 : collection.total_pages
    }
  end

  def links(collection)
    return { self: request.url.to_s } if collection.empty?

    # using Kaminari helper methods to retrieve paths to next and prev pages
    next_page = path_to_next_page collection
    prev_page = path_to_prev_page collection

    {
      self: request.url.to_s,
      next: "#{request.base_url}#{next_page}",
      prev: "#{request.base_url}#{prev_page}"
    }
  end
end
