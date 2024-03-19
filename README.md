Deploying a Virtual Machine in Azure using Terraform

Prerequisites

Before proceeding, ensure that you have the necessary components installed on your machine:

Terraform: Download and install Terraform from the official website.
Azure CLI: Install Azure CLI by following the instructions provided here.
Steps

1. Clone the Repository: Copy the repository containing your Terraform configuration files.

git clone https://github.com/Estebanm1812/TerraformVm

2. Authenticate with Azure: Sign in to your Azure account using Azure CLI.

az login

3. Navigate to the Directory: Change your current directory to the one containing the Terraform configuration files.

cd basic

4. Initialize Terraform: Execute the command below to initialize Terraform and fetch the required providers.

terraform init

5. Review and Customize Configuration: Open the main.tf file in a text editor, review the configuration, and adjust settings such as VM size, region, username, password, etc., according to your requirements.

6. Plan the Deployment: Generate an execution plan by running the command below. This will provide insights into the actions Terraform will take when applying the configuration.

terraform plan

7. Ensure Correct Formatting: After making changes, ensure proper indentation by running the following command.

terraform fmt

8. Deploy the Virtual Machine: If the plan appears satisfactory, apply the configuration to deploy the virtual machine.

terraform apply

9. Access the Virtual Machine: After the deployment completes, access your virtual machine using the provided public IP address and credentials.

10. Cleanup Resources: When the virtual machine is no longer needed, destroy it and clean up associated resources by running:

terraform destroy

Additional Resources

Terraform Documentation
Azure Provider Documentation
