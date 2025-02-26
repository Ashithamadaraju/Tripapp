# import streamlit as st
# import pandas as pd




# # Sample Travel Package Data
# data = [
#     {"name": "Paris Budget Escape", "location": "Paris", "price": 700, "agent": "Budget Paris Tours"},
#     {"name": "Paris Classic Getaway", "location": "Paris", "price": 1200, "agent": "ABC Travels"},
#     {"name": "Paris Luxury Experience", "location": "Paris", "price": 2500, "agent": "Elite Voyages"},
#     {"name": "Paris Ultimate VIP Tour", "location": "Paris", "price": 5000, "agent": "Royal Paris Travel"},
#     {"name": "Paris Honeymoon Delight", "location": "Paris", "price": 3000, "agent": "Romantic Escapes"},

#     {"name": "Bali Budget Retreat", "location": "Bali", "price": 500, "agent": "Backpacker Bali"},
#     {"name": "Bali Tropical Getaway", "location": "Bali", "price": 800, "agent": "XYZ Tours"},
#     {"name": "Bali Premium Escape", "location": "Bali", "price": 1600, "agent": "Luxury Bali Travels"},
#     {"name": "Bali Ultra Luxury", "location": "Bali", "price": 3500, "agent": "VIP Bali Resorts"},
#     {"name": "Bali Private Island Bliss", "location": "Bali", "price": 6000, "agent": "Bali Elite Holidays"},

#     {"name": "Swiss Alps Budget Adventure", "location": "Switzerland", "price": 900, "agent": "Swiss Backpackers"},
#     {"name": "Swiss Alps Standard Trip", "location": "Switzerland", "price": 1500, "agent": "Global Travel"},
#     {"name": "Swiss Alps Premium Journey", "location": "Switzerland", "price": 2800, "agent": "Alpine Lux Travels"},
#     {"name": "Swiss Alps 5-Star Experience", "location": "Switzerland", "price": 4500, "agent": "Swiss Prestige Voyages"},
#     {"name": "Swiss Alps Helicopter Tour", "location": "Switzerland", "price": 7000, "agent": "Skyline Swiss Adventures"},

#     {"name": "Tokyo Budget Explorer", "location": "Tokyo", "price": 1000, "agent": "Tokyo Budget Tours"},
#     {"name": "Tokyo Classic Tour", "location": "Tokyo", "price": 1300, "agent": "Nippon Journeys"},
#     {"name": "Tokyo Luxury Shopping", "location": "Tokyo", "price": 2500, "agent": "Luxury Japan Travel"},
#     {"name": "Tokyo VIP Samurai Experience", "location": "Tokyo", "price": 5000, "agent": "Royal Japan Escapes"},
#     {"name": "Tokyo Ultimate Private Tour", "location": "Tokyo", "price": 8000, "agent": "Elite Tokyo Guides"},

#     {"name": "New York Budget Stay", "location": "New York", "price": 900, "agent": "Backpacker NYC"},
#     {"name": "New York City Explorer", "location": "New York", "price": 1100, "agent": "Urban Escapes"},
#     {"name": "New York Premium Holiday", "location": "New York", "price": 2500, "agent": "Luxury NYC Tours"},
#     {"name": "New York Ultra Luxury", "location": "New York", "price": 5000, "agent": "Manhattan Elite Travel"},
#     {"name": "New York Penthouse Experience", "location": "New York", "price": 9000, "agent": "Exclusive NYC Voyages"},

#     {"name": "Santorini Backpacker Escape", "location": "Santorini", "price": 850, "agent": "Greek Budget Adventures"},
#     {"name": "Santorini Classic Romance", "location": "Santorini", "price": 1400, "agent": "Greek Odyssey"},
#     {"name": "Santorini Luxury Retreat", "location": "Santorini", "price": 3200, "agent": "Santorini Dream Holidays"},
#     {"name": "Santorini Super Luxury Stay", "location": "Santorini", "price": 5000, "agent": "Elite Greece Getaways"},
#     {"name": "Santorini Private Villa Escape", "location": "Santorini", "price": 7500, "agent": "VIP Mediterranean Tours"},

#     {"name": "Dubai Budget Holiday", "location": "Dubai", "price": 1000, "agent": "Affordable Dubai"},
#     {"name": "Dubai Desert Experience", "location": "Dubai", "price": 1600, "agent": "Emirates Travel"},
#     {"name": "Dubai Premium Stay", "location": "Dubai", "price": 3500, "agent": "Dubai Elite Resorts"},
#     {"name": "Dubai VIP Royal Tour", "location": "Dubai", "price": 7000, "agent": "Arabian Luxury Getaways"},
#     {"name": "Dubai Private Yacht Stay", "location": "Dubai", "price": 12000, "agent": "Exclusive Dubai"},

#     {"name": "Maldives Budget Tour", "location": "Maldives", "price": 1200, "agent": "Maldives Budget Holidays"},
#     {"name": "Maldives Classic Retreat", "location": "Maldives", "price": 1700, "agent": "Tropical Getaways"},
#     {"name": "Maldives Overwater Bungalow", "location": "Maldives", "price": 4000, "agent": "Maldives Exclusive Resorts"},
#     {"name": "Maldives VIP Island Experience", "location": "Maldives", "price": 8000, "agent": "Luxury Ocean Getaways"},
#     {"name": "Maldives Private Island Paradise", "location": "Maldives", "price": 15000, "agent": "Ultimate Maldives Escape"},

#     {"name": "Rome Backpacker Adventure", "location": "Rome", "price": 750, "agent": "Budget Rome Tours"},
#     {"name": "Rome Historical Classic", "location": "Rome", "price": 1000, "agent": "Classic Tours"},
#     {"name": "Rome Luxury Stay", "location": "Rome", "price": 3000, "agent": "Italian Elite Travel"},
#     {"name": "Rome 5-Star VIP Tour", "location": "Rome", "price": 5500, "agent": "Prestige Italy"},
#     {"name": "Rome Private Historical Experience", "location": "Rome", "price": 9000, "agent": "Royal Italy Tours"}
# ]




# df = pd.DataFrame(data)

# st.title("🌍 Travel Package Finder")
# st.write("Search for the best travel packages all in one place!")

# search_query = st.text_input("Enter location or package name:")
# if st.button("Search"):
#     results = df[df["location"].str.contains(search_query, case=False, na=False) | 
#                  df["name"].str.contains(search_query, case=False, na=False)]
    
#     if not results.empty:
#         st.table(results)
#     else:
#         st.warning("No matching travel packages found.")




# # import streamlit as st
# # import requests

# # # FastAPI backend URL
# # API_URL = "http://127.0.0.1:8000/packages"

# # st.title("🌍 Travel Packages Dashboard")

# # # Fetch data from FastAPI
# # response = requests.get(API_URL)

# # if response.status_code == 200:
# #     packages = response.json()
# #     for package in packages:
# #         st.subheader(package["name"])
# #         st.write(f"📍 Location: {package['location']}")
# #         st.write(f"💰 Price: ${package['price']}")
# #         st.write(f"🧑‍💼 Agent: {package['agent']}")
# #         st.markdown("---")
# # else:
# #     st.error("Failed to fetch travel packages from the backend.")




import streamlit as st
import requests
import pandas as pd

# FastAPI Endpoint
API_URL = "http://127.0.0.1:8000/packages"  # Ensure FastAPI is running

st.title("🌍 Travel Package Finder")
st.write("Search for the best travel packages all in one place!")

# Fetch data from FastAPI
try:
    response = requests.get(API_URL)
    if response.status_code == 200:
        data = response.json()
        df = pd.DataFrame(data)
    else:
        st.error("Failed to fetch data from API.")
        df = pd.DataFrame()  # Empty DataFrame
except requests.exceptions.ConnectionError:
    st.error("Could not connect to API. Make sure the FastAPI backend is running.")
    df = pd.DataFrame()  # Empty DataFrame

# Search feature
search_query = st.text_input("Enter location or package name:")
if st.button("Search"):
    if not df.empty:
        results = df[df["location"].str.contains(search_query, case=False, na=False) | 
                     df["name"].str.contains(search_query, case=False, na=False)]
        
        if not results.empty:
            st.table(results)
        else:
            st.warning("No matching travel packages found.")
    else:
        st.warning("No data available. Ensure the API is running.")