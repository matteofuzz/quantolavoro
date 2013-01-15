module ApplicationHelper
  def minutes_as_hm(minutes)
    if minutes.to_i > 0
      hm = minutes.divmod 60
      "#{hm[0]}:#{hm[1]}"
    else
      '00:00'
    end
  end
end
