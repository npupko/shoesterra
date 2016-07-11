module ApplicationHelper
  def nav_link(link_text, link_path)
    class_name = current_page?(link_path) ? 'active' : ''
    content_tag(:li, :class => class_name) do
      link_to link_text, link_path
    end
  end

  def current_class?(test_path)
    return 'active' if request.path == test_path
    ''
  end
  def shop_1()
    @shop1 = "2"
    /Time.zone.now = current_page?(link_path) ? 'alert-success' : 'alert-danger'/
    if (Time.now.monday? || Time.now.tuesday? || Time.now.wednesday? || Time.now.thursday?)
      if (10..22).include?(Time.now.hour)
        @shop1 = "Работает"
        return "alert-success"
      else
        @shop1 = "Не работает"
        return "alert-danger"
      end
    else
      if (10..21).include?(Time.now.hour)
        return "alert-success"
      else
        return "alert-danger"
      end
    end
  end

  def shop_2()
    unless (Time.now.monday?)
      if (10..19).include?(Time.now.hour)
        @shop2 = "Работает"
        return "alert-success"
      else
        @shop2 = "Не работает"
        return "alert-danger"
      end
    else
      @shop2 = "Выходной"
      return "alert-danger"
    end
  end
end
