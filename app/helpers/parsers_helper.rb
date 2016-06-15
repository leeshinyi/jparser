module ParsersHelper
  def array_list(list)
    if list.is_a?(Array)
      content_tag :ul do
        list.collect { |l| concat(content_tag(:li, l)) }
      end
    end
  end

  def basic_info(info)
    case 
    when info.is_a?(Array)
      info = info.first.is_a?(Hash) ? parse_hash(info) : info
      info.html_safe
    when info.is_a?(Hash)
      info.values.join(' ')
    else
      info
    end
  end

  def parse_hash(arr)
    x = []
    arr.each do |hsh|
      info = hsh.map {|k, v| "#{k.titleize}: #{v}"}
      x << array_list(info)
    end
    x.join("<br />")
  end
    
end
