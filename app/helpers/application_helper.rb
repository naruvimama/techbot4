module ApplicationHelper
  def date_or_time_if_today(d)
    if d.day == Date.today
      "at ".concat(d.to_time.to_s)
    else
      "on ".concat(d.to_date.to_s)
    end
  end
end
