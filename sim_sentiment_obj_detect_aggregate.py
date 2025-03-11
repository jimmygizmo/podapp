
import runpod
import time
import random


def analyze_sentiment(text):
    """Simulate sentiment analysis of text."""
    sentiments = ["Positive", "Neutral", "Negative"]
    score = random.uniform(-1, 1)
    sentiment = random.choice(sentiments)
    return f"Sentiment: {sentiment}, Score: {score:.2f}"


def detect_objects(image_url):
    """Simulate object detection in an image."""
    objects = ["person", "car", "dog", "cat", "tree", "building"]
    detected = random.sample(objects, random.randint(1, 4))
    confidences = [random.uniform(0.7, 0.99) for _ in detected]
    return [f"{obj}: {conf:.2f}" for obj, conf in zip(detected, confidences)]


def handler(job):
    job_input = job["input"]
    task_type = job_input.get("task_type", "sentiment")
    items = job_input.get("items", [])

    results = []
    for item in items:
        time.sleep(random.uniform(0.5, 2))  # Simulate processing time

        if task_type == "sentiment":
            result = analyze_sentiment(item)
        elif task_type == "object_detection":
            result = detect_objects(item)
        else:
            result = f"Unknown task type: {task_type}"

        results.append(result)
        yield result

    return results


def start_handler():
    def wrapper(job):
        generator = handler(job)
        if job.get("id") == "local_test":
            return list(generator)
        return generator

    runpod.serverless.start({"handler": wrapper, "return_aggregate_stream": True})


if __name__ == "__main__":
    start_handler()


##
#


# https://docs.runpod.io/tutorials/sdks/python/101/aggregate

