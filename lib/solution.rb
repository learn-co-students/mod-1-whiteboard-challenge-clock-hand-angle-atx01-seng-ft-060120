
def clock_angle(time)
    split_time = time.split(":")
    hours = split_time[0].to_i
    minutes = split_time[1].to_i

    total_minutes = nil

    #calculate total minutes
    
    if hours == 12
        total_minutes = minutes
    else
        total_minutes = (hours * 60) + minutes
    end

    #calculate degrees
    hour_degrees = total_minutes * 0.5
    minute_degrees = minutes * 6

    if minute_degrees > hour_degrees
        360 - (minute_degrees - hour_degrees)
    else
        hour_degrees - minute_degrees
    end
end