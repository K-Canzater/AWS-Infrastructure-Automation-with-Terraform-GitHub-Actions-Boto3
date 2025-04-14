import boto3
import logging

logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)


ec2_client = boto3.client("ec2")


def stop_instances(instance_ids):

    try:

        response = ec2_client.stop_instances(InstanceIds=instance_ids)

        for StoppingInstance in response["StoppingInstances"]:

            instance_id = StoppingInstance.get("InstanceId", "ID Unknown")
            current_state = StoppingInstance.get("CurrentState", "State Unknown")

            logger.info(
                f""" 
                        Instance ID: {instance_id}
                        Current State: {current_state} 
"""
            )

    except Exception as e:

        logger.error(f"An error occurred while attempting to stop the instance(s):{e}")


if __name__ == "__main__":

    instance_ids = ["i-0d58bd248e44dda8f"]

    stop_instances(instance_ids)
