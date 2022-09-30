## Description

Deploy a single BYOL FortiGate in IBM Cloud using the Schematics service.

## Deployment overview

> **Note:** For a local deployment a Gen 2 API key will be needed. For details see: [IBM Gen 2 API key](https://cloud.ibm.com/docs/terraform?topic=terraform-provider-reference)

This deployment requires that you already have the following already configured:

-   A VPC
-   Two subnets
-   An ssh key

Terraform deploys the following components:

-   A FortiGate BYOL instance with two NICs, one in each subnet
-   A Floating Public IP address attached to the FortiGate
-   A Logging disk

## Deployment:

1. Fill in the required VPC, Subnet and ssh key values as shown below:

    ![IBM FortiGate Deploy](https://raw.githubusercontent.com/fortinet/ibm-fortigate-terraform-deploy/main/imgs/step_2_catalog_deploy.png)

> **Note** For Subnets, put the UUID of the subnet. Not the name

 ![IBM FortiGate Deploy](https://raw.githubusercontent.com/fortinet/ibm-fortigate-terraform-deploy/main/imgs/step_6_a.png)

> You must also provide the resource group name.

2. Apply the Plan.

3. Outputs, such as the **Public IP** and **Default username and password** can be found under the `View Log` link.

    ![IBM FortiGate Deploy](https://raw.githubusercontent.com/fortinet/ibm-fortigate-terraform-deploy/main/imgs/step_6_a.png)
    ![IBM FortiGate Deploy](https://raw.githubusercontent.com/fortinet/ibm-fortigate-terraform-deploy/main/imgs/step_6_b.png)

    See below for info on destroying the cluster.

## Alternative Schematics Deployment

Deploying This package from IBM Schematics is possible. To do so navigate to the Repo at https://github.com/fortinet/ibm-fortigate-terraform-deploy and follow the steps below:

1. From the IBM console navitagte to Schematics.
2. Fill in the workspace info and create your workspace.
3. Copy the repo URL into repository URL field and then select Terraform version 0.13.

    ![IBM FortiGate Deploy](https://raw.githubusercontent.com/fortinet/ibm-fortigate-terraform-deploy/main/imgs/step_3.png)

4. Add in and adjust any Variables as needed in the settings.

    ![IBM FortiGate Deploy](https://raw.githubusercontent.com/fortinet/ibm-fortigate-terraform-deploy/main/imgs/step_6_a.png)

5. Apply the plan.
6. Outputs, such as the **Public IP** and **Default username and password** can be found under the `View Log` link.

    ![IBM FortiGate Deploy](https://raw.githubusercontent.com/fortinet/ibm-fortigate-terraform-deploy/main/imgs/step_6_a.png)
    ![IBM FortiGate Deploy](https://raw.githubusercontent.com/fortinet/ibm-fortigate-terraform-deploy/main/imgs/step_6_b.png)

## Destroy the cluster

To destroy the cluster, click on `Actions...`->`Destroy`

![IBM FortiGate Deploy](https://raw.githubusercontent.com/fortinet/ibm-fortigate-terraform-deploy/main/imgs/destroy_cluster.png)

# Support

Fortinet-provided scripts in this and other GitHub projects do not fall under the regular Fortinet technical support scope and are not supported by FortiCare Support Services.
For direct issues, please refer to the [Issues](https://github.com/fortinet/ibm-fortigate-terraform-deploy/issues) tab of this GitHub project.
For other questions related to this project, contact [github@fortinet.com](mailto:github@fortinet.com).

## License

[License](https://github.com/fortinet/ibm-fortigate-terraform-deploy/blob/main/LICENSE) © Fortinet Technologies. All rights reserved.
