# elastic-open-crawler-cicd

# Elastic Open Web Crawler as Code

This repository demonstrates how to manage **Elastic Open Web Crawler** configurations as code.  

It provides a full setup for **local testing** and **automated deployment** using GitHub Actions and a remote VM (e.g., AWS EC2).  

With this workflow, crawler configurations are:
- **Versioned** in GitHub
- **Testable** locally with Docker
- **Automatically deployed** to production on every push to `main`

## Features
- Local environment with Elasticsearch, Kibana, and the Open Web Crawler (via `docker-compose`).
- CI/CD pipeline powered by GitHub Actions.
- Configuration injection via environment variables.
- Example pipeline for extracting product prices and cleaning them with an ingest pipeline.

## Repository Structure
├── docker-compose.yml # Local environment (Elasticsearch, Kibana, Crawler)
├── config/
│ └── crawler-config.yml # Base crawler configuration
├── .github/
│ └── workflows/
│ └── deploy.yml # GitHub Action to deploy to remote VM
├── local.sh # Script to test locally

## Quickstart

Clone the repo and run the crawler locally:

```bash
# 1. Clone this repository
git clone https://github.com/<your-org>/<your-repo>.git
cd <your-repo>

# 2. Start local crawler + Elasticsearch + Kibana
./local.sh

# 3. Open Kibana in your browser
open http://localhost:5601

# 4. Check crawled data in DevTools
GET web-crawl-index/_search
{
  "query": { "match_all": {} }
}

# elastic-open-crawler-as-code
