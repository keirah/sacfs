module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | SACFS"      
    end
  end
end
