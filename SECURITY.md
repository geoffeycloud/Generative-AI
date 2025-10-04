# Security Policy

## Protecting Your API Keys

This project requires a Google Gemini API key to function. **Never commit your actual API key to version control.**

### Best Practices

1. **Always use environment variables** - Store your API key in a `.env` file, which is already configured to be ignored by git.

2. **Never share your `.env` file** - This file contains sensitive credentials and should never be committed to git or shared publicly.

3. **Use `.env.example` as a template** - Copy `.env.example` to `.env` and fill in your actual API key:
   ```bash
   cp .env.example .env
   # Then edit .env with your actual API key
   ```

4. **Verify before committing** - Always run `git status` before committing to ensure your `.env` file is not being tracked.

5. **Rotate compromised keys** - If you accidentally commit an API key, immediately:
   - Revoke the exposed API key at [Google AI Studio](https://aistudio.google.com/app/apikey)
   - Generate a new API key
   - Update your local `.env` file
   - Remove the key from git history (use tools like `git-filter-repo` or contact GitHub support)

## Reporting a Vulnerability

If you discover a security vulnerability in this project, please report it by:
1. Creating a private security advisory on GitHub
2. Emailing the repository owner
3. **Do not** create a public issue for security vulnerabilities

## Security Features

This repository includes the following security measures:
- `.gitignore` configured to exclude `.env` files
- `.env.example` template without real credentials
- Security documentation and warnings

## Additional Resources

- [GitHub's guide on removing sensitive data](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)
- [Google AI API Key Best Practices](https://ai.google.dev/gemini-api/docs/api-key)
