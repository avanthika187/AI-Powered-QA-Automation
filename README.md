# AI-Powered-QA-Automation


An intelligent test automation framework built with **Selenium + Cucumber + Java**, enhanced with **Generative AI** for automatic failure detection and fix suggestions.

**What Makes This Different**

This is not just another Selenium framework.
It uses a **Large Language Model (LLaMA via Groq API)** to 
automatically analyze test failures and suggest fixes in real time.

**Features**

  **AI Failure Analyzer** — When a test fails, AI automatically 
  explains the root cause and suggests exact fix steps
  **Gen AI Edge Case Generation** — Used Claude AI to generate 
  8+ edge case scenarios from a 2-scenario feature file
  **Auto-generated AI Reports** — Failure analysis saved as 
  structured .txt reports in /results folder
  **Cucumber BDD** — Human-readable feature files with 
  Scenario Outline and Examples table
  **Self-contained framework** — @Before/@After hooks manage 
  driver lifecycle automatically

**Tech Stack**
| Tool | Purpose |
| Java | Core language |
| Selenium WebDriver | Browser automation |
| Cucumber BDD | Test scenarios |
| Groq API (LLaMA 3.3) | AI failure analysis |
| Claude AI | Edge case generation |
| Maven | Dependency management |
| Edge Driver | Browser |

**How AI Integration Works**
Test Fails
↓
@After hook triggers automatically
↓
Scenario name + error sent to Groq LLM API
↓
AI returns root cause + fix suggestion
↓
Printed in console + saved to results/AI_Failure_Fix.txt
