resource "aws_s3_bucket" "myBucket" {
  bucket = "UniqueBucketName"

  versioning {
    enabled = true
  }
  website {
    index_document = "greetingPage.html" # Replace with your desired index file
  }
  
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }

}

resource "aws_s3_bucket_object" "object" {
  count  = length(var.files_to_upload)
  bucket = aws_s3_bucket.myBucket.id
  key    = basename(var.files_to_upload[count.index])
}