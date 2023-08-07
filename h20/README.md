# Repository Pattern

## Table of Contents
- [Repository Pattern](#repository-pattern)
  - [Table of Contents](#table-of-contents)
  - [1. Introduction](#1-introduction)
  - [2. Advantages of using a repository](#2-advantages-of-using-a-repository)
    - [2.1 Handling Data Operations with Multiple Backends](#21-handling-data-operations-with-multiple-backends)
    - [2.2 Swapping Implementations without Impacting Calling Code](#22-swapping-implementations-without-impacting-calling-code)
    - [2.3 Enhanced Modularity and Testability](#23-enhanced-modularity-and-testability)
    - [2.4 Single Source of Truth for Data](#24-single-source-of-truth-for-data)
  - [3. Drawbacks of not following the Repository Pattern](#3-drawbacks-of-not-following-the-repository-pattern)
  - [4. Best Practices and Concepts for Repository Implementations](#4-best-practices-and-concepts-for-repository-implementations)
    - [4.1 CRUD Operations](#41-crud-operations)
    - [4.2 One Repository per Business Object](#42-one-repository-per-business-object)
    - [4.3 Provide a Contract Interface and Use Generic Implementations](#43-provide-a-contract-interface-and-use-generic-implementations)
  - [5. References](#5-references)

## 1. Introduction
The repository pattern is a design pattern that isolates the data layer from the rest of the application. It provides a way to handle data and business logic separately from the user interface (UI). The data layer includes components such as networking code, databases, error handling, and data manipulation. By using a repository, we can centralize data access and provide consistent APIs for the rest of the application to interact with the data.

<img src="https://github.com/RafatMeraz/ostad-flutter-batch-three/assets/53111065/0037676a-d9c7-4fee-bd30-af0ef7f9b15a" alt="layer" height="600" width="1000">

To implement the repository pattern, we create a separate class, such as the `WaterTrackerRepository` class, which acts as a mediator between the data sources and the rest of the application. This separation of concerns improves code organization and follows recommended best practices for code separation and architecture.

<img src="https://github.com/RafatMeraz/ostad-flutter-batch-three/assets/53111065/88517272-9ab5-411e-aff9-23a6c639a086" alt="terr" height="600" width="1000">


## 2. Advantages of using a repository
The repository pattern offers several advantages that contribute to better code organization, flexibility, and testability in software development:

### 2.1 Handling Data Operations with Multiple Backends
A repository module serves as a centralized gateway for data operations, allowing developers to work with multiple backends seamlessly. It enables the application to fetch data from different sources, such as a network or a local database, without burdening the calling code (e.g., view models) with the implementation details. This flexibility ensures efficient handling of various scenarios, including online and offline modes.

### 2.2 Swapping Implementations without Impacting Calling Code
By encapsulating data access logic within the repository, the calling code becomes decoupled from the specific data storage mechanisms. This decoupling allows developers to swap out or change the underlying implementation details, such as migrating to a different persistence library or altering the data access approach, without affecting the rest of the application's code. This modularity simplifies maintenance, as changes can be localized to the repository, while the rest of the codebase remains unaffected.

### 2.3 Enhanced Modularity and Testability
The repository pattern promotes code modularity and testability. Separating data access operations into a repository allows developers to isolate and mock the repository when testing the rest of the application's code. By providing mock implementations of the repository, automated testing becomes more straightforward, enabling developers to focus on specific parts of the codebase independently.

### 2.4 Single Source of Truth for Data
The repository pattern establishes a single source of truth for a particular piece of the application's data. This is especially valuable when dealing with multiple data sources, such as a networked resource and an offline cache. The repository ensures that the application's data remains accurate and up-to-date, providing users with the best possible experience even when the app is offline or working with different data sources. This consistency and reliability enhance the overall user experience and data integrity of the application.

## 3. Drawbacks of not following the Repository Pattern
When data access code is embedded directly within the application's components, such as controllers, it can lead to several drawbacks:

- Code Duplication: Embedding database access code in multiple controllers can result in code duplication. Any changes to the data access logic would require modifying each controller separately, leading to maintenance issues.
- Lack of Separation of Concerns: Mixing data access code with application logic violates the principle of separation of concerns. It becomes harder to maintain and test the codebase when database access code is tightly coupled with other components.
- Reduced Flexibility: Without a repository pattern, it becomes challenging to switch between different data storage mechanisms or make changes to the data access logic without impacting the rest of the application.

<img src="https://github.com/RafatMeraz/ostad-flutter-batch-three/assets/53111065/e765ea5c-946e-4dd2-bdf4-6fb2592be9f3" alt="controller" height="300" width="1000">

<img src="https://github.com/RafatMeraz/ostad-flutter-batch-three/assets/53111065/2108680c-e061-41df-bf3a-ea455015a79e" alt="controller2" height="300" width="1000">

## 4. Best Practices and Concepts for Repository Implementations
When implementing repositories, it is important to follow certain best practices and concepts:

### 4.1 CRUD Operations
Define CRUD operations (Create, Read, Update, Delete) for the business objects in the repository. These operations should map to common commands performed in the infrastructure code, such as SQL inserts, updates, and deletes, or HTTP POST, PUT, and DELETE requests when using APIs.

### 4.2 One Repository per Business Object
Follow the single responsibility principle by having one repository per business object. This approach ensures that each repository is responsible for the data access of a specific entity, maintaining a clear separation of concerns.

### 4.3 Provide a Contract Interface and Use Generic Implementations
To achieve a loosely coupled architecture, define repositories using interfaces. Controllers and services can depend on these interfaces, abstracting away the underlying infrastructure concerns. Generic implementations can further streamline the code by reducing the need for repetitive repository definitions, especially when dealing with similar business objects.

## 5. References
- [Android Developer Documentation: Repository Pattern](https://developer.android.com/codelabs/basic-android-kotlin-training-repository-pattern#3)
- [Pusher: Clean Architecture Introduction](https://pusher.com/tutorials/clean-architecture-introduction/#entities)
- [YouTube: Repository Pattern in C#](https://youtu.be/Wiy54682d1w)
- [YouTube: Repository Pattern Explained](https://youtu.be/x6C20zhZHw8)
- [LinkedIn: What is the Repository Pattern?](https://www.linkedin.com/pulse/what-repository-pattern-alper-sara%C3%A7/)
