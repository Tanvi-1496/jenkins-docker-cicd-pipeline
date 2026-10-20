# 🚀 Pipeline Studio | Jenkins CI/CD Pipeline

> **From Code to Deployment.** A DevOps project demonstrating automated application delivery using Jenkins, Docker, Nginx, and GitHub.

[![Live Website](https://img.shields.io/badge/Live-Website-00C7D9?style=for-the-badge)](https://tanvi-1496.github.io/jenkins-docker-cicd-pipeline/)
[![Launch Application](https://img.shields.io/badge/Launch-Application-2563EB?style=for-the-badge)](https://tanvi-1496.github.io/jenkins-docker-cicd-pipeline/app/index.html)
[![Source Code](https://img.shields.io/badge/Source-GitHub-181717?style=for-the-badge&logo=github)](https://github.com/Tanvi-1496/jenkins-docker-cicd-pipeline)

---

## 📌 Project Overview

**Pipeline Studio** is a hands-on CI/CD project built to understand how application code moves through a continuous integration and deployment workflow.

The project combines a responsive web interface with a Jenkins pipeline that builds a Docker image, verifies the image, and deploys the application using Nginx.

### ✨ Key Highlights

- Automated pipeline defined using a `Jenkinsfile`
- Docker image build and verification
- Container deployment using Nginx
- GitHub repository for source control
- Public static website hosting through GitHub Pages
- Separate showcase website and LaunchPad application

---

## 🌐 Live Demonstration

| Component | Link |
|---|---|
| Pipeline Studio showcase | [Open website](https://tanvi-1496.github.io/jenkins-docker-cicd-pipeline/) |
| LaunchPad application | [Open application](https://tanvi-1496.github.io/jenkins-docker-cicd-pipeline/app/index.html) |
| GitHub repository | [View source code](https://github.com/Tanvi-1496/jenkins-docker-cicd-pipeline) |

---

## 📸 Project Screenshots

### 1. Pipeline Studio: Main Dashboard

**Purpose:** Introduces the project and its CI/CD workflow.

<!-- Insert your actual main website screenshot here using GitHub's image upload feature. -->

### 2. LaunchPad Application

**Purpose:** Demonstrates the separate application interface hosted on GitHub Pages.

<!-- Insert your actual LaunchPad screenshot here using GitHub's image upload feature. -->

### 3. Jenkins Pipeline: Successful Build

**Purpose:** Shows the Jenkins pipeline execution and successful completion.

<!-- Insert your actual Jenkins console or pipeline screenshot here using GitHub's image upload feature. -->

### 4. Docker Deployment

**Purpose:** Shows the deployed application container or relevant Docker verification output.

<!-- Insert your actual Docker screenshot here using GitHub's image upload feature. -->

---

## 🏗️ CI/CD Workflow

The Jenkins pipeline is organized into three main stages:

### 1. Build
- Uses the Dockerfile to build the application image.
- Tags the image as `jenkins-cicd-demo:latest`.

### 2. Test
- Inspects the generated Docker image.
- Confirms that the image is available for deployment.

### 3. Deploy
- Removes the previous application container if present.
- Starts a new container using the built image.
- Checks the Nginx configuration using `nginx -t`.

The pipeline reports success or failure in Jenkins so the execution result can be reviewed.

---

## 🔄 Workflow Architecture

```text
Developer
   |
   v
GitHub Repository
   |
   v
Jenkins Pipeline
   |
   +----> Build Docker Image
   |
   +----> Verify Image
   |
   +----> Deploy Container
                |
                v
             Nginx
                |
                v
       Running Web Application
```

---

## 🛠️ Technologies Used

| Technology | Purpose |
|---|---|
| Jenkins | Automates the CI/CD pipeline |
| Docker | Builds and runs container images |
| Nginx | Serves the web application |
| Git and GitHub | Version control and source hosting |
| HTML and CSS | Builds the web interfaces |
| GitHub Pages | Publishes the static website publicly |

---

## 📁 Repository Structure

```text
jenkins-docker-cicd-pipeline/
│
├── app/
│   └── index.html
│
├── index.html
├── Dockerfile
├── Dockerfile.jenkins
├── Jenkinsfile
└── README.md
```

---

## ⚙️ Running the Project

### Prerequisites

- Git
- Docker
- Jenkins configured to use Docker
- A web browser

### 1. Clone the repository

```bash
git clone https://github.com/Tanvi-1496/jenkins-docker-cicd-pipeline.git
cd jenkins-docker-cicd-pipeline
```

### 2. Build the Docker image

```bash
docker build -t jenkins-cicd-demo:latest .
```

### 3. Run the application container

```bash
docker run -d --name jenkins-cicd-demo -p 8082:80 jenkins-cicd-demo:latest
```

Open `http://localhost:8082` in your browser.

**Note:** These commands assume Docker is available in your terminal and port `8082` is free. If the container already exists, remove it before creating another container with the same name.

---

## 📚 Key Learnings

- Understanding the purpose of continuous integration and continuous deployment
- Writing a declarative Jenkins pipeline
- Building and inspecting Docker images
- Running containerized applications
- Using Nginx to serve static web content
- Managing project files with Git and GitHub
- Publishing static websites using GitHub Pages
- Troubleshooting links, paths, and deployment configuration

---

## 🎯 Project Goal

The goal of this project is to gain practical experience with core DevOps tools and understand how a repeatable application delivery workflow is structured.

---

## 👩‍💻 Author

**Tanvi Jaware**

[GitHub Profile](https://github.com/Tanvi-1496)

---

<p align="center">
  <b>Built as part of a hands-on DevOps internship project.</b><br>
  From code to deployment, one pipeline at a time. 🚀
</p>