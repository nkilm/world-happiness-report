import numpy as np
from geopy.geocoders import Nominatim
import geopy
geopy.geocoders.options.default_user_agent = "nikhil.2002.coc@gmail.com"
geolocator = Nominatim()

def geolocate(country):
    try:
        # Geolocate the center of the country
        loc = geolocator.geocode(country)
        print(loc.latitude,loc.longitude)
    except:
        print("NaN")

geolocate("India")