# Terraform Workspaces and Variables

This repository contains examples and exercises focusing on two of Terraform's powerful features: Workspaces and Variables. These features are essential for managing infrastructure as code in a scalable and maintainable manner.

## About Terraform Workspaces

Terraform workspaces allow users to manage multiple states within the same configuration. This is particularly useful for managing different environments (such as development, staging, and production) without needing to duplicate code.

### Key Benefits:
- **Isolation**: Each workspace is isolated from others, ensuring changes made in one do not affect another. if we donot use workspaces then for different workspaces i need to create multiple directories and work in individual directories
- **Environment Management**: Simplifies the management of multiple environments with the same codebase.
just need to switch to different workspace and done.
example:
```bash
terraform workspace new dev
terraform workspace new prod
terraform workspace select dev
terraform workspace show
```

## About Terraform Variables

Variables in Terraform are used to abstract certain values that can change based on the environment or other factors. This makes your Terraform configurations more dynamic and reusable.

### Key Benefits:
- **Flexibility**: Easily adapt configurations to different situations without altering the core logic.
- **Reusability**: Promote reusability by using the same configuration with different variable values.

## Repository Structure

- `/workspaces`: Contains examples and use cases showcasing how to effectively use Terraform workspaces.
- `/variables`: Demonstrates the definition and usage of variables within Terraform projects.

## Getting Started

To get started with these examples, you need to have Terraform installed on your machine. Follow the installation guide here: [Install Terraform](https://learn.hashicorp.com/terraform/getting-started/install.html)

