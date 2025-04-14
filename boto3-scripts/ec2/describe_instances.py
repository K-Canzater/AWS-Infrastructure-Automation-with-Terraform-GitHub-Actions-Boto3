import boto3
import logging

logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

ec2_client = boto3.client("ec2")


def describe_instances():
    try:
        response = ec2_client.describe_instances()

        for reservation in response["Reservations"]:
            for instance in reservation.get("Instances", []):
                private_ip = instance.get("PrivateIpAddress", "No IP address available")
                public_ip = instance.get(
                    "PublicIpAddress", "No Public IP address available"
                )
                tags = instance.get("Tags", "No tags available")
                instance_id = instance.get("InstanceId", "No instance ID available")
                state = instance.get("State", {}).get("Name", "Unknown state")
                launch_time = instance.get("LaunchTime", "Unknown launch time")
                instance_type = instance.get("InstanceType", "Unknown instance type")

                logger.info(
                    f""" 
                    Private IP Address: {private_ip}
                    Public IP Address: {public_ip}
                    Tags: {tags}
                    Instance ID: {instance_id}
                    State: {state}
                    Launch Time: {launch_time}
                    Instance Type: {instance_type}
                """
                )

    except Exception as e:
        logger.error(f"An error occurred while attempting to describe instances: {e}")


if __name__ == "__main__":

    describe_instances()
