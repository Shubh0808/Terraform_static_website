Here's an updated **README.md** tailored to your specific setup with the domain `shubham4.com`, CloudFront, and S3:

---

# Terraform Static Website with S3, CloudFront, and Route 53

This project demonstrates how to deploy a static website using **Terraform**, hosted on **AWS S3**, and served via **CloudFront** with a custom domain setup using **Route 53**. The project automates infrastructure provisioning and deployment in a repeatable manner using **Infrastructure as Code (IaC)**.

## Tools and Technologies Used

* **Terraform**: Infrastructure as Code (IaC) tool to provision and manage cloud resources.
* **AWS S3**: Storage service used to host the static website files.
* **AWS CloudFront**: Content Delivery Network (CDN) to distribute and cache the website globally.
* **AWS Route 53**: DNS service used to manage the domain and point it to the CloudFront distribution.
* **AWS CLI**: Command-line tool for managing AWS services.

## Prerequisites

Before running this project, ensure you have the following:

* **AWS Account**: You need an active AWS account.
* **Terraform**: Installed on your local machine. [Installation Guide](https://learn.hashicorp.com/tutorials/terraform/install-cli)
* **AWS CLI**: Installed and configured on your local machine. [Installation Guide](https://aws.amazon.com/cli/)
* **Domain Name**: A custom domain, in this case, `shubham4.com`.

## Setup and Deployment Steps

### 1. Clone the Repository

Clone the project repository to your local machine.

### 2. Configure AWS CLI

Ensure your AWS CLI is configured with the appropriate credentials and region.

### 3. Install Terraform

Ensure you have Terraform installed. You can check by running the following command:

* `terraform -version`

If you don’t have Terraform installed, you can download it from the [Terraform Downloads](https://www.terraform.io/downloads.html) page.

### 4. Initialize Terraform

In the project directory, initialize Terraform to download necessary provider plugins and set up the working directory.

### 5. Modify `main.tf` for Your Domain and S3 Bucket

* **S3 Bucket**: Ensure the S3 bucket name is globally unique.
* **Domain**: In the `variables.tf` file, set the `domain_name` variable to `shubham4.com`.

### 6. Review and Apply Terraform Plan

Before applying the changes, run the Terraform plan to preview what changes will be made in your AWS account. The plan will show resources like:

* **S3 Bucket**: Hosting the static website.
* **CloudFront Distribution**: For caching and global distribution.
* **Route 53 DNS Records**: To point `www.shubham4.com` to CloudFront.

Once you’ve reviewed the plan, apply the Terraform configuration to provision the infrastructure.

### 7. Verify Website

After Terraform successfully applies the configuration, you will receive the CloudFront URL (e.g., `d3mrb1mzxbwazg.cloudfront.net`). At this point, you can access the website using this CloudFront URL.

Additionally, if your **Route 53** configuration is correct, you will be able to access your website at the custom domain `www.shubham4.com`, which will point to your CloudFront distribution and thus serve the static website hosted in S3.

### 8. Push to GitHub

To push the project to GitHub:

1. Initialize Git if not already done:

   * `git init`

2. Add files to the staging area:

   * `git add .`

3. Commit the changes:

   * `git commit -m "Initial commit: Static website with Terraform + S3 + CloudFront + Route 53"`

4. Push the project to GitHub:

   * `git push origin main`

### Additional Configuration (Optional)

#### Enable HTTPS on CloudFront

For securing your custom domain with HTTPS, you can request an SSL certificate through **AWS ACM (AWS Certificate Manager)**.

Once you’ve obtained the SSL certificate, update the CloudFront distribution’s `viewer_certificate` block to use the new certificate.

#### Clean Up

To destroy the infrastructure and clean up resources, run the following command:

* `terraform destroy`

This will remove the S3 bucket, CloudFront distribution, and Route 53 records.

## Project Structure

The project structure is as follows:

```
terraform-static-site/
├── website/                # Static website files (index.html, CSS, images)
│   └── index.html
├── main.tf                 # Terraform configuration to provision AWS resources
├── outputs.tf              # Outputs for CloudFront URL and other resources
├── variables.tf            # Variables like domain name
├── versions.tf             # Terraform and provider version requirements
└── .gitignore              # Git ignore file (e.g., for .terraform folder)
```

## Conclusion

With this setup, your static website is now hosted on AWS using **S3** and **CloudFront**, and served through **Route 53** with a custom domain (`www.shubham4.com`). The entire infrastructure is managed using **Terraform**, making it easy to replicate, modify, or tear down as needed.

Feel free to modify the `website/` folder to add your own static files (HTML, CSS, JavaScript). This project can be easily extended by adding more AWS services (e.g., Lambda, API Gateway) or integrating CI/CD pipelines.

---

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

This **README.md** gives a clear explanation of how to deploy and manage the static website, and guides the user through the configuration, setup, and deployment steps, with a focus on your domain (`shubham4.com`). Let me know if you need any further changes!
