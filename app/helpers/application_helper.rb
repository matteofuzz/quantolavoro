module ApplicationHelper
  def minutes_as_hm(minutes)
    if minutes.to_i > 0
      hm = minutes.divmod 60
      if hm[1] == 0
        "#{hm[0]}h"
      elsif hm[0] == 0
        "#{hm[1]}m"
      else
        "#{hm[0]}h#{hm[1]}m"
      end
    else
      '-'
    end
  end
end
