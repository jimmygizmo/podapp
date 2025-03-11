
import runpod
from runpod import RunPodLogger
import time
import random


# This simulates image classification.


log = RunPodLogger()


def load_model():
    """Simulate loading a machine learning model."""
    log.info("Loading image classification model...")
    time.sleep(2)  # Simulate model loading time
    return "ImageClassifier"


def preprocess_image(image_url):
    """Simulate image preprocessing."""
    log.debug(f"Preprocessing image: {image_url}")
    time.sleep(0.5)  # Simulate preprocessing time
    return f"Preprocessed_{image_url}"


def classify_image(model, preprocessed_image):
    """Simulate image classification."""
    classes = ["cat", "dog", "bird", "fish", "horse"]
    confidence = random.uniform(0.7, 0.99)
    predicted_class = random.choice(classes)
    return predicted_class, confidence


def handler(job):
    job_input = job["input"]
    images = job_input.get("images", [])

    # Process mock logs if provided
    for job_log in job_input.get("mock_logs", []):
        log_level = job_log.get("level", "info").lower()
        if log_level == "debug":
            log.debug(job_log["message"])
        elif log_level == "info":
            log.info(job_log["message"])
        elif log_level == "warn":
            log.warn(job_log["message"])
        elif log_level == "error":
            log.error(job_log["message"])

    try:
        # Load model
        model = load_model()
        log.info("Model loaded successfully")

        results = []
        for i, image_url in enumerate(images):
            # Preprocess image
            preprocessed_image = preprocess_image(image_url)

            # Classify image
            predicted_class, confidence = classify_image(model, preprocessed_image)

            result = {
                "image": image_url,
                "predicted_class": predicted_class,
                "confidence": round(confidence, 2),
            }
            results.append(result)

            # Log progress
            progress = (i + 1) / len(images) * 100
            log.info(f"Progress: {progress:.2f}%")

            # Simulate some processing time
            time.sleep(random.uniform(0.5, 1.5))

        log.info("Classification completed successfully")

        # Simulate error if mock_error is True
        if job_input.get("mock_error", False):
            raise Exception("Mock error")

        return {"status": "success", "results": results}

    except Exception as e:
        log.error(f"An error occurred: {str(e)}")
        return {"status": "error", "message": str(e)}


runpod.serverless.start({"handler": handler})


##
#

