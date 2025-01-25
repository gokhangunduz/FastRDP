# FastRDP

FastRDP is a repository designed to quickly set up a Remote Desktop environment on Amazon EC2 instances. With a single command, you can install all necessary components and get started immediately.

## Installation Command

To quickly set up the environment, run the following command:

```bash
wget -qO- "https://raw.githubusercontent.com/gokhangunduz/FastRDP/refs/heads/main/setup.sh" | bash
```

This will install Docker, Docker Compose, and fetch the required configuration files to launch the Remote Desktop service effortlessly.

## Network Security Group Configuration

Ensure that the following ports are open in your EC2 instance's Network Security Group to allow proper functioning:

- **TCP 8080**: For the application interface.
- **UDP 52000-52100**: For remote desktop communication.

Add these rules to your security group:

| Protocol | Port Range  | Source    |
| -------- | ----------- | --------- |
| TCP      | 8080        | 0.0.0.0/0 |
| UDP      | 52000-52100 | 0.0.0.0/0 |

## Recommended Specs for Neko

To ensure the best performance for Neko, the following specifications are recommended:

| Resolution  | Cores | RAM  | Recommendation   |
| ----------- | ----- | ---- | ---------------- |
| 1024×576@30 | 2     | 2GB  | Not Recommended  |
| 1280x720@30 | 4     | 3GB  | Good Performance |
| 1280x720@30 | 6     | 4GB  | Recommended      |
| 1280x720@30 | 8     | 4GB+ | Best Performance |

## Recommended EC2 Instance Types

Based on the above Neko software requirements, here are the recommended EC2 instance types:

| EC2 Instance Type | Resolution  | Cores | RAM | Performance Level |
| ----------------- | ----------- | ----- | --- | ----------------- |
| t2.micro          | 1024×576@30 | 2     | 1GB | Not Recommended   |
| t2.small          | 1280x720@30 | 2     | 2GB | Good Performance  |
| t3.medium         | 1280x720@30 | 2     | 4GB | Recommended       |
| t3.large          | 1280x720@30 | 2     | 8GB | Best Performance  |
| m5.large          | 1280x720@30 | 2     | 8GB | Best Performance  |
