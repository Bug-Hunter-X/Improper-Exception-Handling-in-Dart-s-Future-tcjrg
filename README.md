# Dart Future Exception Handling Bug

This repository demonstrates a common error in Dart asynchronous programming: improper exception handling within a `Future` function. The provided code fetches data from an API; however, its exception handling is incomplete, potentially leading to unhandled exceptions and application crashes.

## Bug Description

The `fetchData` function uses a `try-catch` block to handle potential errors during the API request and JSON decoding.  However, simply `rethrowing` the exception without proper handling in the calling function will result in an unhandled exception.  This can cause the application to crash unexpectedly.

## Solution

The solution addresses this by providing a more robust error handling mechanism. Instead of simply rethrowing the exception, the improved function handles the `Exception` and provides informative logging and reporting mechanisms.

## How to Reproduce

1. Clone this repository.
2. Run `bug.dart`. Observe that the error isn't handled gracefully.
3. Run `bugSolution.dart` to see a more robust solution.
