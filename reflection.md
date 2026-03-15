## Reflection Answers

### QR1. Which part of the assignment was the most difficult and how did you solve it?

The most difficult part of the assignment was understanding asynchronous programming and how `Future`, `async`, and `await` work together. At first, it was confusing because the function did not immediately return the final result but instead returned a `Future`. When I tried printing the result without using `await`, the output showed a `Future` object rather than the expected value. To solve this problem, I reviewed the Dart documentation and practiced writing small examples using `Future.delayed()`. After experimenting with asynchronous functions, I understood that `await` pauses execution until the result becomes available. This helped me properly implement the asynchronous calculator operations.


### QR2. If the program needed to analyze `List<double>` instead of `List<int>`, what changes would be necessary?

If the program needed to analyze a `List<double>` instead of a `List<int>`, several parts of the code would need to be updated. The list declaration would need to change to `List<double>`, and the functions that process the numbers would need to accept and return `double` values where appropriate. For example, variables storing the maximum, minimum, and sum would use the `double` type instead of `int`. Additionally, calculations such as averages would still work correctly because division already produces a `double` value. These changes demonstrate the importance of selecting appropriate data types when designing a program.


### QR3. Describe a real-world scenario where asynchronous programming would be useful in a Flutter app.

A real-world scenario where asynchronous programming is useful in a Flutter application is when retrieving data from an online API. For example, a weather application may need to request current weather information from a remote server. Since network communication can take time, the application uses asynchronous functions to send the request and wait for the response. While the request is processing, the application can continue running and display a loading indicator to inform the user that data is being fetched. When the server responds, the application updates the user interface with the retrieved weather information.


### QR4. What are the advantages and disadvantages of using separate methods for each calculator operation compared to using a single method?

Using separate methods for each calculator operation, such as `add`, `subtract`, `multiply`, and `divide`, improves code readability and organization. Each method has a single responsibility and performs one specific task, which makes the program easier to maintain and understand. This approach also allows individual operations to be reused in different parts of the program. However, the disadvantage is that it may increase the number of functions in the codebase. An alternative approach is to use a single method that accepts the operation type as a parameter, which can reduce the number of functions but may make the code slightly more complex. In practice, developers often choose the approach that provides the best balance between clarity and maintainability.