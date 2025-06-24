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



## 🧪 Example Report Output

The final report includes:
- ✅ Scanned URL
- ⚠️ Vulnerabilities found by ZAP
- 🧠 AI-based remediation advice

## 🔐 Secrets Required

Add the following secrets in your GitHub repository:
- `GEMINI_API_KEY` – Your Gemini API key

## 🧰 Requirements

- Docker (automatically handled in GitHub Actions)
- Python (for parsing and AI integration)
- Gemini API key (free from Google AI Studio)

## 📌 Coming Soon

- Auto-email reports
- Multiple URL support
- Dashboard integration

## 📄 License

MIT License

