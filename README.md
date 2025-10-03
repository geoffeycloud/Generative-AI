#  AI Quiz Generator

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



1. **Get a Gemini API Key**
   - Visit [Google AI Studio](https://aistudio.google.com/)
   - Create an account and generate an API key

2. **Set up Environment Variables**
  
3. **Install Dependencies**
   


## Usage

1. Run the program 
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


