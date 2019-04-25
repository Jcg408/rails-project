#change default date/time for app. Don't want to use strftime for everything.

Date::DATE_FORMATS[:default]="%m/%d/%Y"
Time::DATE_FORMATS[:default]="%I:%M%p"