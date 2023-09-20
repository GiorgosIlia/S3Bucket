# AWS S3 Bucket Terraform Configuration

This Terraform configuration defines the infrastructure to create an AWS S3 bucket with versioning enabled and the ability to host a static website. It also uploads specified files to the S3 bucket.

## Prerequisites

Before you begin, ensure you have the following:

1. [Terraform](https://www.terraform.io/downloads.html) installed on your local machine.
2. AWS credentials configured with the necessary permissions to create resources.

## Configuration Files

### `main.tf`

The `main.tf` file contains the main Terraform configuration for creating the AWS S3 bucket and configuring it. Here's an overview of what it does:

- Creates an AWS S3 bucket named "UniqueBucketName".
- Enables versioning for the S3 bucket.
- Configures the bucket to host a static website with "greetingPage.html" as the index document.
- Adds tags to the S3 bucket for identification.

### `providers.tf`

The `providers.tf` file specifies the required Terraform provider and its configuration. In this case, it configures the AWS provider with the "eu-central-1" region.

### `terraform.tfvars`

The `terraform.tfvars` file is used to set input variables for your Terraform configuration. It defines the list of files to upload to the S3 bucket.

## Usage

1. Clone this repository to your local machine:

   ```shell
   git clone https://github.com/GiorgosIlia/S3Bucket.git
   ```

2. Change into the project directory:

   ```shell
   cd S3 bucket
   ```

3. Initialize the Terraform working directory:

   ```shell
   terraform init
   ```

4. Review and adjust the configuration files if necessary (`main.tf`, `providers.tf`, and `terraform.tfvars`).

5. Apply the Terraform configuration to create the AWS resources:

   ```shell
   terraform apply
   ```

6. When prompted, confirm the changes by typing "yes."

7. Terraform will create the AWS S3 bucket and upload the specified files.

## Cleanup

To destroy the AWS resources created by this Terraform configuration, run the following command:

```shell
terraform destroy
```

## Variables

You can customize the list of files to upload to the S3 bucket by editing the `terraform.tfvars` file.

## License

This Terraform configuration is provided under the [MIT License](LICENSE).

```

Replace `<repository-url>` and `<project-directory>` with the appropriate values for your project.

Feel free to customize this `README.md` file further to include any additional information or instructions specific to your project.