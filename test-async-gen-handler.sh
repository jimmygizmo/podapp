#! /usr/bin/env bash


python async_gen_handler.py --test_input '
{
  "input": {
    "cities": ["New York", "London", "Tokyo", "Paris", "Sydney"],
    "update_interval": 3,
    "duration": 15
  },
  "id": "local_test"
}'


#>bash test-async-gen-handler.sh
#Weather Data Stream | Starting job local_test
#Monitoring cities: New York, London, Tokyo, Paris, Sydney
#{"timestamp": 0.51, "data": {"city": "London", "temperature": 33.5, "humidity": 53.0}}
#{"timestamp": 0.65, "data": {"city": "Sydney", "temperature": -6.9, "humidity": 95.0}}
#{"timestamp": 1.03, "data": {"city": "Tokyo", "temperature": 13.0, "humidity": 19.4}}
#{"timestamp": 1.17, "data": {"city": "Paris", "temperature": 16.0, "humidity": 31.7}}
#{"timestamp": 1.54, "data": {"city": "New York", "temperature": 21.6, "humidity": 5.6}}
#{"timestamp": 5.23, "data": {"city": "Paris", "temperature": 32.0, "humidity": 26.0}}
#{"timestamp": 5.44, "data": {"city": "New York", "temperature": 9.1, "humidity": 12.4}}
#{"timestamp": 5.81, "data": {"city": "Sydney", "temperature": 21.7, "humidity": 91.2}}
#{"timestamp": 5.82, "data": {"city": "Tokyo", "temperature": -2.9, "humidity": 47.3}}
#{"timestamp": 6.15, "data": {"city": "London", "temperature": -5.2, "humidity": 97.5}}
#{"timestamp": 9.91, "data": {"city": "Sydney", "temperature": 39.5, "humidity": 10.2}}
#{"timestamp": 9.96, "data": {"city": "London", "temperature": 5.0, "humidity": 70.0}}
#{"timestamp": 10.0, "data": {"city": "Tokyo", "temperature": 12.6, "humidity": 16.8}}
#{"timestamp": 10.26, "data": {"city": "New York", "temperature": 17.5, "humidity": 80.2}}
#{"timestamp": 11.12, "data": {"city": "Paris", "temperature": 36.5, "humidity": 56.3}}
#{"timestamp": 15.13, "data": {"city": "Tokyo", "temperature": -1.5, "humidity": 60.9}}
#{"timestamp": 15.28, "data": {"city": "Sydney", "temperature": 37.8, "humidity": 79.4}}
#{"timestamp": 15.33, "data": {"city": "Paris", "temperature": -0.9, "humidity": 24.2}}
#{"timestamp": 15.68, "data": {"city": "London", "temperature": 28.1, "humidity": 70.5}}
#{"timestamp": 15.9, "data": {"city": "New York", "temperature": 30.2, "humidity": 64.5}}
#{"status": "completed", "message": "Weather monitoring completed"}

