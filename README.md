# AutoSec-Scan-Automated-Security-Scan-
This project automates web vulnerability scanning using **OWASP ZAP** and generates security remediation suggestions using **Gemini AI**, all via **GitHub Actions**.

## 🚀 Features

- Accepts a webpage URL as input
- Scans the webpage using OWASP ZAP for 5 minutes
- Extracts and saves vulnerability findings
- Sends findings to Gemini AI for remediation advice
- Generates a complete markdown report with vulnerabilities and AI suggestions

## 🛠️ How It Works

1. GitHub Action is triggered manually with a webpage URL
2. ZAP runs in Docker to scan the site for 5 minutes
3. Vulnerabilities are extracted and formatted
4. Gemini AI suggests remediation steps
5. A final report is generated and saved in `/reports`

## 📂 Project Structure
.
├── .github/
│ └── workflows/
│ └── zap-scan.yml
├── scripts/
│ ├── run_zap.sh
│ ├── parse_zap_output.py
│ └── query_gemini.py
├── reports/
│ └── scan-report-YYYY-MM-DD.md
├── requirements.txt
├── config.yml (optional)
└── README.md
