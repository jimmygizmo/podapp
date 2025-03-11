#! /usr/bin/env bash


python generator_handler.py --test_input '
{
  "input": {
    "text": "This is a test of the RunPod text-to-speech simulator. It processes text in chunks and simulates audio generation.",
    "chunk_size": 4,
    "delay": 1
  },
  "id": "local_test"
}'


#>bash test-generator-handler.sh
#TTS Simulator | Starting job local_test
#Processing text: This is a test of the RunPod text-to-speech simulator. It processes text in chunks and simulates audio generation.
#{"status": "processing", "chunk": "Audio chunk 1: This is a test"}
#{"status": "processing", "chunk": "Audio chunk 2: of the RunPod text"}
#{"status": "processing", "chunk": "Audio chunk 3: to speech simulator It"}
#{"status": "processing", "chunk": "Audio chunk 4: processes text in chunks"}
#{"status": "processing", "chunk": "Audio chunk 5: and simulates audio generation"}
#{"status": "completed", "message": "Text-to-speech conversion completed"}

