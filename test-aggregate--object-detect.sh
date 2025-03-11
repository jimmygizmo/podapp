#! /usr/bin/env bash


python sim_sentiment_obj_detect_aggregate.py --test_input '
{
  "input": {
    "task_type": "object_detection",
    "items": [
      "image1.jpg",
      "image2.jpg",
      "image3.jpg"
    ]
  }
}'


##
#


# https://docs.runpod.io/tutorials/sdks/python/101/aggregate


#>bash test-aggregate--object-detect.sh
#--- Starting Serverless Worker |  Version 1.7.7 ---
#INFO   | test_input set, using test_input as job input.
#DEBUG  | Retrieved local job: {'input': {'task_type': 'object_detection', 'items': ['image1.jpg', 'image2.jpg', 'image3.jpg']}, 'id': 'local_test'}
#INFO   | local_test | Started.
#DEBUG  | local_test | Handler output: [['cat: 0.82', 'dog: 0.92', 'car: 0.82'], ['tree: 0.79', 'building: 0.94', 'cat: 0.97'], ['person: 0.95', 'cat: 0.76']]
#DEBUG  | local_test | run_job return: {'output': [['cat: 0.82', 'dog: 0.92', 'car: 0.82'], ['tree: 0.79', 'building: 0.94', 'cat: 0.97'], ['person: 0.95', 'cat: 0.76']]}
#INFO   | Job local_test completed successfully.
#INFO   | Job result: {'output': [['cat: 0.82', 'dog: 0.92', 'car: 0.82'], ['tree: 0.79', 'building: 0.94', 'cat: 0.97'], ['person: 0.95', 'cat: 0.76']]}
#INFO   | Local testing complete, exiting.

