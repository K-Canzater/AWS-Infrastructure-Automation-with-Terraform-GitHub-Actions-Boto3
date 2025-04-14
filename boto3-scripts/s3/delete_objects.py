import boto3
import logging

logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

s3_client = boto3.client("s3")


def delete_object_from_bucket(bucket_name, object_name):
    try:
        s3_client.delete_object(Bucket=bucket_name, Key=object_name)

        logger.info(
            f"File '{object_name}' has been successfully deleted from the bucket '{bucket_name}'."
        )

    except Exception as e:
        logger.error(
            f"An error occurred while attempting to delete the file '{object_name}': {e}"
        )


if __name__ == "__main__":
    bucket_name = "cloudinfra-dev-kc"
    object_name = "This is a log file for testing S3 u.txt"

    delete_object_from_bucket(bucket_name, object_name)
