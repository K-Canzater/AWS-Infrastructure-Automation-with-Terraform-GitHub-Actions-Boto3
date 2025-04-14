import boto3
import logging

logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

ec2_client = boto3.client("ec2")


def start_instances(instance_ids):

    try:
        response = ec2_client.start_instances(InstanceIds=instance_ids)

        for StartingInstance in response["StartingInstances"]:
            instanceid = StartingInstance.get("InstanceId", "ID Unknown")
            current_state = StartingInstance.get("CurrentState", "State Unknown")

            logger.info(
                f""" 
                        Instance ID: {instanceid} 
                        Current State: {current_state}
"""
            )

    except Exception as e:
        logger.error(
            f"An error occurred while attempting to start the instance(s): {e}"
        )


if __name__ == "__main__":

    instance_ids = ["i-0d58bd248e44dda8f"]
    start_instances(instance_ids)
