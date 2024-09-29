# Masterclass Tests


## The Pyramid of Tests

 - 1º - E2E
 - 2º - Integration
 - 3º - Unit


## Lifecycle

  -  Runs before the tests:
      ```
      setUp(()=> null))
      ```
  - Runs after the tests.
    ```

    tearDown(() => (null) ))
    ``` 

  - Runs before all the tests:
    ```
    setUpAll(() => null))
    ```

  - Runs afters all the tests:
    ```
    tearDownAll(() => null))
    ```  

 ## Trype A Pattern for Tests

 - 1º Prepare to run the test
    ```
    Arrange
    ```

 - 2º Execute the test:
 
    ```
    Act
    ```

 - 3º Result expected after the Act (Action):

    ```
    Assert
    ```

 ## Matchers

 - The most used: 
    ```
    isA<>()
    ```

    ```
    equals()
    ```

 ## Async

 - Should check if the request `completes: 
    ```
    equals(request, *completes*)
    ```
 - Should have the exact return of request:
    ```
    completion(isA<Type<Type>>())
    ```

 - Should return the same content of request:
    ```
    completion(equals('content'))
    ```

## Stream

- To error we're going to use the:
  ```
  emitError
  ```
