
def clock_angle(time)
    split_time = time.split(":")
    hours = split_time[0].to_i
    minutes = split_time[1].to_i

    #calculate degrees
    minute_degrees = minutes * 6

    if hours == 12
        hour_degrees = minutes * 0.5
    else
        hour_degrees = ((hours * 60) + minutes) * 0.5
    end

    #calculate difference

    if minute_degrees > hour_degrees
        360 - (minute_degrees - hour_degrees)
    else
        hour_degrees - minute_degrees
    end
end