# encoding: UTF-8

module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "IX Открытый велопробег Дорога Минина"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end


  def is_active(action)       
    params[:action] == action ? "active" : nil        
  end


  def sortable(column, title = nil)  
    title ||= column.titleize  
    css_class = (column == sort_column) ? "current #{sort_direction}" : nil  
    direction = (column == sort_column && sort_direction == "asc") ? "desc" : "asc"  
    link_to title, params.merge(:sort => column, :direction => direction, :page => nil), {:class => css_class}  
  end  

end