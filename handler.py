import runpod
import time
import os


def handler(event):
    """
    This is the handler function that will be called by the serverless.
    """
    print(f"Worker Start")
    
    # Get the input from the event
    job_input = event["input"]
    
    # Extract parameters from the input
    prompt = job_input.get("prompt", "Default prompt")
    seconds = job_input.get("seconds", 0)
    
    print(f"Received prompt: {prompt}")
    print(f"Sleeping for {seconds} seconds...")
    
    # Replace the sleep code with your Python function to generate images, text, or run any machine learning workload
    time.sleep(seconds)
    
    # Return the results
    return {
        "result": prompt,
        "execution_time": seconds
    }


# Start the RunPod serverless worker
if __name__ == "__main__":
    print("Starting RunPod Serverless Worker")
    runpod.serverless.start({"handler": handler})