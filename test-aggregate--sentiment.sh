#! /usr/bin/env bash


python sim_sentiment_obj_detect_aggregate.py --test_input '
{
  "input": {
    "task_type": "sentiment",
    "items": [
      "I love this product!",
      "The service was terrible.",
      "It was okay, nothing special."
    ]
  }
}'


##
#


# https://docs.runpod.io/tutorials/sdks/python/101/aggregate


#bash test-aggregate--sentiment.sh
#--- Starting Serverless Worker |  Version 1.7.7 ---
#INFO   | test_input set, using test_input as job input.
#DEBUG  | Retrieved local job: {'input': {'task_type': 'sentiment', 'items': ['I love this product!', 'The service was terrible.', 'It was okay, nothing special.']}, 'id': 'local_test'}
#INFO   | local_test | Started.
#DEBUG  | local_test | Handler output: ['Sentiment: Neutral, Score: -0.88', 'Sentiment: Neutral, Score: -0.32', 'Sentiment: Positive, Score: -0.88']
#DEBUG  | local_test | run_job return: {'output': ['Sentiment: Neutral, Score: -0.88', 'Sentiment: Neutral, Score: -0.32', 'Sentiment: Positive, Score: -0.88']}
#INFO   | Job local_test completed successfully.
#INFO   | Job result: {'output': ['Sentiment: Neutral, Score: -0.88', 'Sentiment: Neutral, Score: -0.32', 'Sentiment: Positive, Score: -0.88']}
#INFO   | Local testing complete, exiting.

