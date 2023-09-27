# main.tf for Terraform Configuration

# Create an AWS S3 bucket named "myBucket" with the following configuration:
resource "aws_s3_bucket" "myBucket" {
  
  # Specify a unique name for the S3 bucket.
  bucket = "UniqueBucketName"
  
  # Enable versioning for the S3 bucket to retain historical object versions.
  versioning {
    enabled = true
  }
  
  # Configure the S3 bucket as a static website.
  website {
    # Set the default index document for the website.
    index_document = "index.html" # Replace with your desired index file
  }
  
  # Define tags for the S3 bucket to categorize and label it.
  tags = {
    Name        = "My bucket"     # Assign a name tag to the bucket.
    Environment = "Dev"           # Assign an environment tag to the bucket.
  }
}

# Create AWS S3 bucket objects based on the list of files provided in the "files_to_upload" variable.
resource "aws_s3_bucket_object" "object" {
  
  # Create multiple instances of this resource based on the length of the "files_to_upload" variable.
  count  = length(var.files_to_upload)
  
  # Set the target S3 bucket's ID to the ID of the previously defined "myBucket" resource.
  bucket = aws_s3_bucket.myBucket.id
  
  # Set the object's key (filename) to the base name of the file specified in "var.files_to_upload".
  key    = basename(var.files_to_upload[count.index])
}
