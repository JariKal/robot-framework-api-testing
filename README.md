# Robot Framework API Testing – Portfolio Example

A small API testing project demonstrating basic REST API testing using Robot Framework and RequestsLibrary.

## What the tests cover

- Retrieving an existing post using `GET /posts/1`
- Validating response content, not just HTTP status codes
- Retrieving a collection of posts
- Retrieving an existing user
- Checking the `404 Not Found` response for a missing post

## Practice API

The tests use the public [JSONPlaceholder](https://jsonplaceholder.typicode.com/) REST API.

No credentials, private user data, or ALT Zone systems are involved.

## Tools & Technologies

- Python 3
- Robot Framework 7.5
- RequestsLibrary
- REST API
- JSON

## How to run

1. Install Python 3.
2. Create a virtual environment: `python -m venv .venv`
3. Activate it in Windows PowerShell: `.\.venv\Scripts\Activate.ps1`
4. Install dependencies: `python -m pip install -r requirements.txt`
5. Run tests: `python -m robot api_tests.robot`

Robot Framework generates `report.html`, `log.html`, and `output.xml` locally. These files are excluded from Git.

## Test Results

**Local test execution: October 12, 2026**

- Total tests: 4
- Passed: 4
- Failed: 0

All four tests passed successfully against the JSONPlaceholder practice API.

Results describe this specific local test run and do not guarantee future results.

## About This Portfolio Example

This project was prepared with AI assistance as a learning and demonstration project.

My software testing experience includes executing automated tests, analyzing results, investigating failures, and troubleshooting issues.

I am continuing to develop my independent test scripting skills.

## Future Improvements

- Additional negative test cases
- More detailed response validation
- Parameterized test cases
- Improved test documentation
