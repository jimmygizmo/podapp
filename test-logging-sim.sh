#! /usr/bin/env bash


python logging_sim.py --test_input '{
    "input": {
        "images": ["image1.jpg", "image2.jpg", "image3.jpg"],
        "mock_logs": [
            {"level": "info", "message": "Starting job"},
            {"level": "debug", "message": "Debug information"},
            {"level": "warn", "message": "Warning: low disk space"},
            {"level": "error", "message": "Error: network timeout"}
        ],
        "mock_error": false
    }
}'


##
#


# https://docs.runpod.io/tutorials/sdks/python/101/error


#>bash test-logging-sim.sh
#--- Starting Serverless Worker |  Version 1.7.7 ---
#INFO   | test_input set, using test_input as job input.
#DEBUG  | Retrieved local job: {'input': {'images': ['image1.jpg', 'image2.jpg', 'image3.jpg'], 'mock_logs': [{'level': 'info', 'message': 'Starting job'}, {'level': 'debug', 'message': 'Debug information'}, {'level': 'warn', 'message': 'Warning: low disk space'}, {'level': 'error', 'message': 'Error: network timeout'}], 'mock_error': False}, 'id': 'local_test'}
#INFO   | local_test | Started.
#INFO   | Starting job
#DEBUG  | Debug information
#WARN   | Warning: low disk space
#ERROR  | Error: network timeout
#INFO   | Loading image classification model...
#INFO   | Model loaded successfully
#DEBUG  | Preprocessing image: image1.jpg
#INFO   | Progress: 33.33%
#DEBUG  | Preprocessing image: image2.jpg
#INFO   | Progress: 66.67%
#DEBUG  | Preprocessing image: image3.jpg
#INFO   | Progress: 100.00%
#INFO   | Classification completed successfully
#DEBUG  | local_test | Handler output: {'status': 'success', 'results': [{'image': 'image1.jpg', 'predicted_class': 'horse', 'confidence': 0.86}, {'image': 'image2.jpg', 'predicted_class': 'bird', 'confidence': 0.92}, {'image': 'image3.jpg', 'predicted_class': 'cat', 'confidence': 0.95}]}
#DEBUG  | local_test | run_job return: {'output': {'status': 'success', 'results': [{'image': 'image1.jpg', 'predicted_class': 'horse', 'confidence': 0.86}, {'image': 'image2.jpg', 'predicted_class': 'bird', 'confidence': 0.92}, {'image': 'image3.jpg', 'predicted_class': 'cat', 'confidence': 0.95}]}}
#INFO   | Job local_test completed successfully.
#INFO   | Job result: {'output': {'status': 'success', 'results': [{'image': 'image1.jpg', 'predicted_class': 'horse', 'confidence': 0.86}, {'image': 'image2.jpg', 'predicted_class': 'bird', 'confidence': 0.92}, {'image': 'image3.jpg', 'predicted_class': 'cat', 'confidence': 0.95}]}}
#INFO   | Local testing complete, exiting.

