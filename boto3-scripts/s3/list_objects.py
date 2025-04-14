import boto3
import logging

logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

s3_client = boto3.client("s3")


def list_objects(bucket_name):
    try:
        response = s3_client.list_objects_v2(Bucket=bucket_name)

        if "Contents" in response:
            logger.info(f"Objects found in bucket '{bucket_name}':")
            for content in response["Contents"]:
                key = content.get("Key", "No Key")
                logger.info(f"- {key}")
        else:
            logger.info(f"No objects found in bucket '{bucket_name}'.")

    except Exception as e:
        logger.error(f"Error listing objects in bucket '{bucket_name}': {e}")


if __name__ == "__main__":
    bucket_name = "cloudinfra-dev-kc"
    list_objects(bucket_name)
