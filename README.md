# Terraform_Tutorial
Terraform, tool of Infrastructure as Code(IaaC) allow you to manage infrastructure on multiple cloud platforms with configuration files rather than through a graphical user interface. Also the best of this tool is his human-readable configuration language. 


## ----------------- What is Infrastructure as Code with Terraform? ------------------
Infrastructure as Code (IaC) tools allow you to manage infrastructure with configuration files rather than through a graphical user interface.
IaC allows you to build, change, and manage your infrastructure in a safe, consistent, and repeatable way by defining resource configurations that you can version, reuse, and share. <br>

Terraform is HashiCorp's infrastructure as code tool. It lets you define resources and infrastructure in human-readable, declarative configuration files, and manages your infrastructure's lifecycle. Using Terraform has several advantages over manually managing your infrastructure: <br>
> Terraform can manage infrastructure on multiple cloud platforms. <br>
> The human-readable configuration language helps you write infrastructure code quickly. <br>
> Terraform's state allows you to track resource changes throughout your deployments. <br>
> You can commit your configurations to version control to safely collaborate on infrastructure. <br>

#### 1. Manage any infrastructure
Terraform plugins called providers let Terraform interact with cloud platforms and other services via their application programming interfaces (APIs). HashiCorp and the Terraform community have written over 1,000 providers to manage resources on Amazon Web Services (AWS), Azure, Google Cloud Platform (GCP), Kubernetes, Helm, GitHub, Splunk, and DataDog, just to name a few. Find providers for many of the platforms and services you already use in the Terraform Registry. If you don't find the provider you're looking for, you can write your own. <br>

#### 2. Standardize your deployment workflow
Providers define individual units of infrastructure, for example compute instances or private networks, as resources. You can compose resources from different providers into reusable Terraform configurations called modules, and manage them with a consistent language and workflow. <br>
Terraform's configuration language is declarative, meaning that it describes the desired end-state for your infrastructure, in contrast to procedural programming languages that require step-by-step instructions to perform tasks. Terraform providers automatically calculate dependencies between resources to create or destroy them in the correct order. <br>

**To deploy infrastructure with Terraform:** <br>
> **Scope** - Identify the infrastructure for your project. <br>
> **Author** - Write the configuration for your infrastructure. <br>
> **Initialize** - Install the plugins Terraform needs to manage the infrastructure. <br>
> **Plan** - Preview the changes Terraform will make to match your configuration. <br> 
> **Apply** - Make the planned changes. <br>

#### 3. Track your infrastructure <br>
Terraform keeps track of your real infrastructure in a state file, which acts as a source of truth for your environment. Terraform uses the state file to determine the changes to make to your infrastructure so that it will match your configuration. <br>

#### 4. Collaborate <br>
Terraform allows you to collaborate on your infrastructure with its remote state backends. When you use HCP Terraform (free for up to five users), you can securely share your state with your teammates, provide a stable environment for Terraform to run in, and prevent race conditions when multiple people make configuration changes at once. <br>
You can also connect HCP Terraform to version control systems (VCSs) like GitHub, GitLab, and others, allowing it to automatically propose infrastructure changes when you commit configuration changes to VCS. This lets you manage changes to your infrastructure through version control, as you would with application code. <br>

## ------------------------------ Install Terraform  ------------------------------- <br>
To use Terraform you will need to install it. HashiCorp distributes Terraform as a binary package. You can also install Terraform using popular package managers. <br>
> Retrieve the terraform binary by downloading a pre-compiled binary or compiling it from source. <br>
> To install Terraform, find the appropriate package for your system and download it as a zip archive. <br>
> After downloading Terraform, unzip the package. Terraform runs as a single binary named terraform. Any other files in the package can be safely removed and Terraform will still function. <br>
> Finally, make sure that the terraform binary is available on your PATH. This process will differ depending on your operating system. <br>

![Capture d’écran 2024-09-07 151127](https://github.com/user-attachments/assets/ba99fe8a-60c3-48e3-a5f6-404b5a0459d1)

**On Windows:** <br>
Verify the installation : <br>
> 1. Verify that the installation worked by opening a new terminal session and listing Terraform's available subcommands. <br>
> 2. Add any subcommand to terraform -help to learn more about what it does and available options. <br>

![Capture d’écran 2024-09-07 151028](https://github.com/user-attachments/assets/b3a3cb48-633d-4181-9f5b-183341a04d85)
![Capture d’écran 2024-09-07 151538](https://github.com/user-attachments/assets/ee8f38ed-6216-447e-8a17-56f2147a0815)

**Get Started on Docker:** <br>
In this tutorial, we want to run a docker container from an image NGINX <br>
**Pre requirement :** <br>
> Terraform installed  <br>
> Docker Desktop installed <br>

**Let's go :**
> 1. In the working directory, create a file called main.tf and paste the following Terraform configuration into it. <br>
> 2. Initialize the project, which downloads a plugin called a provider that lets Terraform interact with Docker. <br>

![Capture d’écran 2024-09-07 182240](https://github.com/user-attachments/assets/948f4067-d8ed-4893-9872-f5bffed858f2)

> 3. Provision the NGINX server container with apply. When Terraform asks you to confirm type yes and press ENTER. <br>

![Capture d’écran 2024-09-07 182805](https://github.com/user-attachments/assets/25a95b38-ab2f-41ab-a410-b6851d915cba)

> 4. Verify the existence of the NGINX container by visiting localhost:8000 in your web browser or running docker ps to see the container. <br>

![Capture d’écran 2024-09-07 182943](https://github.com/user-attachments/assets/d015a315-b724-48c9-9659-65b7cd6363d2)
![Capture d’écran 2024-09-07 183036](https://github.com/user-attachments/assets/e85c36f0-2e7d-4614-b910-483525fde229)

> 5. To stop the container, run terraform destroy. <br>

![Capture d’écran 2024-09-07 183303](https://github.com/user-attachments/assets/7dbd848e-5e4f-411c-9759-7dbee5d8bed5)
![Capture d’écran 2024-09-07 183356](https://github.com/user-attachments/assets/058ba56d-1876-4453-a81d-c2bf9566fd1b)

**Get Started on GCP:** <br>
You will build infrastructure on Google Cloud Platform (GCP) for this tutorial, but Terraform can manage a wide variety of resources using providers. <br>

**Prerequisites:** <br>
> A Google Cloud Platform account. If you do not have a GCP account, create one now. This tutorial can be completed using only the services included in the GCP free tier. <br>
> The gcloud CLI installed locally. <br>
> Terraform 0.15.3+ installed locally. <br>

**Set up GCP:** <br>
After creating your GCP account, create or modify the following resources to enable Terraform to provision your infrastructure: <br>
> A GCP Project: GCP organizes resources into projects. Create one now in the GCP console and make note of the project ID. You can see a list of your projects in the cloud resource manager. <br>
> Google Compute Engine: Enable the Google Compute Engine API for your project in the GCP console. Make sure to select the project you are using to follow this tutorial and click the "Enable" button. <br>

**Let's go :** <br>
1. In this tutorial, we want to create **vpc network** using terraform : <br>
> 1. Write configuration : <br>
The set of files used to describe infrastructure in Terraform is known as a Terraform configuration. You will now write your first configuration to create a network. <br>
>> Open main.tf in your text editor, and paste in the configuration below. Be sure to replace <PROJECT_ID> with your project's ID, and save the file. <br>

![Capture d’écran 2024-09-09 012020](https://github.com/user-attachments/assets/109f98f2-c187-445a-af0b-45ce423d0238)

> 2. Authenticate to Google Cloud : <br>
Terraform must authenticate to Google Cloud to create infrastructure. <br>
In your terminal, use the gcloud CLI to set up your Application Default Credentials. <br>

![Capture d’écran 2024-09-09 012158](https://github.com/user-attachments/assets/7d9ade4c-02bf-41c5-975b-949ff2b361a8)

Your browser will open and prompt you to log in to your Google Cloud account. After successful authentication, your terminal will display the path where the gcloud CLI saved your credentials.
The GCP provider automatically uses these credentials to authenticate against the Google Cloud APIs. <br>



> 3. Initialize the directory : <br>
When you create a new configuration — or check out an existing configuration from version control — you need to initialize the directory with terraform init. This step downloads the providers defined in the configuration. <br>

![Capture d’écran 2024-09-09 012444](https://github.com/user-attachments/assets/cd3b32df-12e6-48db-a7f6-effe7cc1fc17)

Terraform downloads the google provider and installs it in a hidden subdirectory of your current working directory, named .terraform. The terraform init command prints the provider version Terraform installed. Terraform also creates a lock file named .terraform.lock.hcl, which specifies the exact provider versions used to ensure that every Terraform run is consistent. This also allows you to control when you want to upgrade the providers used in your configuration. <br>

> 4. Format and validate the configuration : <br>
We recommend using consistent formatting in all of your configuration files. The terraform fmt command automatically updates configurations in the current directory for readability and consistency. <br>
Format your configuration. Terraform will print out the names of the files it modified, if any. In this case, your configuration file was already formatted correctly, so Terraform won't return any file names. <br>

![Capture d’écran 2024-09-09 012635](https://github.com/user-attachments/assets/6e2efd0e-bec3-4450-902a-09bfed85db3a)

You can also make sure your configuration is syntactically valid and internally consistent by using the terraform validate command. <br>

![Capture d’écran 2024-09-09 012906](https://github.com/user-attachments/assets/f90069cc-613a-404b-b1be-c1abbe4c4e65)

Validate your configuration. The example configuration provided above is valid, so Terraform will return a success message. <br>
> 5. Create infrastructure : <br>
Apply the configuration now with the terraform apply command. Terraform will print output similar to what is shown below. We have truncated some of the output for brevity. <br>

![Capture d’écran 2024-09-09 014251](https://github.com/user-attachments/assets/428a5599-cbcb-4180-989d-c493766945c7)

> 6. Inspect state : <br>
When you applied your configuration, Terraform wrote data into a file called terraform.tfstate. Terraform stores the IDs and properties of the resources it manages in this file, so that it can update or destroy those resources going forward. <br>
The Terraform state file is the only way Terraform can track which resources it manages, and often contains sensitive information, so you must store your state file securely and distribute it only to trusted team members who need to manage your infrastructure. In production, we recommend storing your state remotely with HCP Terraform or Terraform Enterprise. Terraform also supports several other remote backends you can use to store and manage your state. <br>
Inspect the current state using terraform show. <br>

![Capture d’écran 2024-09-09 015148](https://github.com/user-attachments/assets/03377368-9a56-4dd0-9a2b-68863c9a662f)
