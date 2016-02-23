require "pl"

class Meridian
    from_military: (military) =>
        mil_hours, mil_mins = @parse_military military
        
        period = "am"

        if mil_hours == 0
        	mil_hours = 12

        elseif mil_hours >= 12
        	mil_hours -= 12
        	period = "pm"

        return "#{tonumber mil_hours}:#{mil_mins} #{period}"


    to_military: (meridian) =>
    	mil_hours, mil_mins, period = @parse_meridian(meridian)

    	if period == "pm"
    		mil_hours += 12 if mil_hours < 12
    	elseif mil_hours == 12
    		mil_hours = 0

    	return "#{@zero_pad mil_hours}:#{mil_mins}"

    parse_meridian: (meridian) =>
    	mer_time, period = utils.splitv meridian, " "
    	mer_hours, mer_mins = utils.splitv mer_time, ":"
    	return tonumber(mer_hours), mer_mins, period

    parse_military: (military) =>
        mil_hours, mil_mins = utils.splitv military, ":"
        mil_hours = tonumber mil_hours
        return mil_hours, mil_mins

    zero_pad: (hours) =>
    	stringx.rjust tostring(hours), 2, "0"