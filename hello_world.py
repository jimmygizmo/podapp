
import runpod


def handler(job):
    job_input = job["input"]

    return f"Hello {job_input['name']}!"


runpod.serverless.start({"handler": handler})

