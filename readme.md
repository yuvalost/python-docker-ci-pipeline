# Python Docker CI Pipeline 🚀

This project is a simple Python application wrapped in a Docker container, with continuous integration (CI) powered by GitHub Actions.

## 🔧 Tech Stack

- 🐍 Python 3.10
- 🐳 Docker
- ✅ GitHub Actions (CI)
- 📦 Terraform (optional — to provision the repo)

---

## 📁 Project Structure

.
├── main.py # Main Python app
├── Dockerfile # Docker instructions
├── requirements.txt # Python dependencies
├── tests/
│ └── test_app.py # Unit tests
└── .github/
└── workflows/
└── python-ci.yml # GitHub Actions CI pipeline

yaml
Copy
Edit

---

## 🚀 Getting Started

### 🖥️ Run Locally

```bash
# Build Docker image
docker build -t python-app .

# Run container
docker run --rm python-app
🧪 Run Tests
bash
Copy
Edit
python -m unittest discover -s tests
Or inside Docker:

bash
Copy
Edit
docker run --rm python-app
⚙️ CI/CD
Every push to the main branch will:

Build the Docker image

Run the container

(Optionally) Run tests

Fail the pipeline if something breaks

Check the Actions tab:
👉 https://github.com/yuvalost/python-docker-ci-pipeline/actions

📦 Built With Terraform
This repo was created and bootstrapped using Terraform and the GitHub Provider.

👤 Author
Yuval Ostrovsky
💼 GitHub: @yuvalost