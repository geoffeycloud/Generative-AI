# AI Quiz Generator

A simple AI-powered quiz generator built with JAC (Jaseci AI Context) language that creates multiple-choice questions on any topic using Google's Gemini AI.

## Features

- Generate quiz questions on any topic
- Multiple-choice format with correct answers
- Powered by Gemini 2.0 Flash model
- Interactive command-line interface


## Prerequisites

- WSL (Windows Subsystem for Linux)
- JAC environment (version 0.8.7 or higher)
- Valid Google Gemini API key

## Setup

1. **Get a Gemini API Key**
   - Visit [Google AI Studio](https://aistudio.google.com/)
   - Create an account and generate an API key

2. **Set up Environment Variables**
   - Copy the example environment file:
     ```bash
     cp .env.example .env
     ```
   - Edit the `.env` file and replace `your_google_gemini_api_key_here` with your actual Gemini API key:
     ```
     GEMINI_API_KEY=your_actual_api_key_here
     ```
   - **Important:** Never commit your `.env` file to version control!

3. **Install Dependencies**
   ```bash
   # Activate JAC environment and install byllm
   source ~/activate_jac.sh
   pip install byllm
   ```

## How to Run

From VS Code terminal (Windows), use this command:

```bash
wsl bash -c "source ~/activate_jac.sh && cd /mnt/c/Users/HP/GenAI-week-1/quiz_ai_project && jac run quiz_generator.jac"
```

The program will automatically load your API key from the `.env` file.

## Usage

1. Run the program using the command above
2. Enter a topic when prompted (e.g., "Python programming", "World History", etc.)
3. The AI will generate a quiz with multiple-choice questions
4. Type `exit` to quit the program

## Example

```
Welcome to the AI Quiz Generator!
Enter a topic to generate quiz questions, or 'exit' to quit
Enter topic: space exploration

Generated Quiz:
1. Which was the first human-made object to reach space?
   A) Sputnik 1
   B) Apollo 11
   C) Voyager 1
   D) Hubble Telescope
**Answer: A) Sputnik 1**

...
```

## File Structure

```
quiz_ai_project/
├── quiz_generator.jac    # Main JAC program
├── .env                  # Environment variables (API key) - NOT in version control
├── .env.example          # Template for environment variables
├── .gitignore           # Git ignore file
└── README.md            # This file
```

## Security Notes

⚠️ **Important Security Reminders:**
- Never commit your `.env` file to version control
- Keep your API keys private and secure
- Use the `.env.example` file as a template for required environment variables
- The `.gitignore` file ensures sensitive files are not accidentally committed

## Technical Details

- **Language:** JAC (Jaseci AI Context)
- **AI Model:** Gemini 2.0 Flash
- **Dependencies:** byllm, litellm
- **Environment:** WSL/Linux

## Troubleshooting

**API Key Invalid Error:**
- Ensure your API key is correct and active
- Make sure the environment variable is properly exported
- Check that there are no extra spaces in the `.env` file

**Module Not Found Error:**
- Ensure `byllm` is installed: `pip install byllm`
- Activate the JAC environment before running: `source ~/activate_jac.sh`

## License

This project is for educational purposes.