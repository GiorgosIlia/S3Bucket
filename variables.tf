# variables.tf for Terraform Configuration

# Define a Terraform variable named "files_to_upload."
variable "files_to_upload" {
  
  # Description of the variable, explaining its purpose.
  description = "List of file paths to upload to S3"
  
  # Define the data type of the variable, which is a list of strings.
  type        = list(string)
}
