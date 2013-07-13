Time::DATE_FORMATS[:blog]  = ->(time) { time.strftime("%B #{ time.day.ordinalize }, %Y at %-I:%M%P %Z") }
Time::DATE_FORMATS[:slashes]  = ->(time) { time.strftime("%-m/%-d/%Y") }