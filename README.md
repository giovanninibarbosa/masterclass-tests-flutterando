# Masterclass Tests


## The Pyramid of Tests

 1º - E2E
 2º - Integration
 3º - Unit


## Lifecycle

  // Lifecycle
  - `setUp(()=> null));` // Runs before the tests.
  - `tearDown(() => (null) ));`  // Runs after the tests.
  
  - `setUpAll(() => null));` // Runs before all the tests.
  - `tearDownAll(() => null));` // Runs afters all the tests.

 ## Trype A Pattern for Tests

 1º Arrange // Prepare to run the test.
 2º Act // Execute the test.
 3º Assert // Result expected after the Act (Action);

 ## Matchers

 - The most used: `isA<>()` e `equals()`;

 ## Async

 - Should check if the request completes: `completes`;
 - Should have the exact return of request: 'completion(isA<Type<Type>>())'
 - Should return the same content of request: 'completion(equals('content'))';