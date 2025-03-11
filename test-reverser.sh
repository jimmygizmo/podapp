#! /usr/bin/env bash

# TEST METHOD ONE OF TWO - CMD LINE TEST

python reverser.py --test_input '{"input": {"text": "Hello, RunPod!"}}'


#>bash test-reverser.sh
#--- Starting Serverless Worker |  Version 1.7.7 ---
#INFO   | test_input set, using test_input as job input.
#DEBUG  | Retrieved local job: {'input': {'text': 'Hello, RunPod!'}, 'id': 'local_test'}
#INFO   | local_test | Started.
#string-reverser | Starting job local_test
#DEBUG  | local_test | Handler output: {'original_text': 'Hello, RunPod!', 'reversed_text': '!doPnuR ,olleH'}
#DEBUG  | local_test | run_job return: {'output': {'original_text': 'Hello, RunPod!', 'reversed_text': '!doPnuR ,olleH'}}
#INFO   | Job local_test completed successfully.
#INFO   | Job result: {'output': {'original_text': 'Hello, RunPod!', 'reversed_text': '!doPnuR ,olleH'}}
#INFO   | Local testing complete, exiting.


