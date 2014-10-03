module ApplicationHelper

  def nav_parent(options = {}, &block)
    content_tag :ul, capture(&block), options
  end

  def nav_link_to(name, route, options = {}, &block)
    options[:class] ||= "active" if current_page?(route) || request.env["PATH_INFO"].starts_with?(route)
    content_tag :li, (link_to(name, route) + (content_tag(:ul, capture(&block)) if block_given?)), options
  end
  
end
