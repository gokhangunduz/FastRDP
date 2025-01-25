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
