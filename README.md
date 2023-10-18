# Grocer.io 
<img src="https://github.com/GabrielRegis/flutter-grocery-io/assets/34111140/13028246-5c85-4d9b-a633-13db0303d6d4" width="150" height="150">

Grocer.io is a personal project designed to simplify the creation of shopping lists. This application is under constant development with the aim of providing an efficient and streamlined experience for creating and managing grocery lists. This documentation aims to provide basic information about the project and its current functionality.


## Project structure overview

```
📦 src
├─ assets
│  ├─ animations
│  └─ fonts
└─ lib
   ├─ core  [Core features and configurations]
   │  ├─ app
   │  ├─ date_and_time
   │  ├─ design_system [Design system widgets and utils]
   │  ├─ local_storage
   │  ├─ navigation
   │  ├─ providers
   │  ├─ string
   │  └─ theme [Theme configuration based on Material 3]
   └─ features
      ├─ categories
      ├─ groceries 
      │  ├─ atoms [Atomic stores]
      │  ├─ models [Entities declarations]
      │  ├─ screens [Feature screens]
      │  └─ widgets [Feature widgets]
      └─ purchases
```


## Architecture of the Project

The architecture of Grocer.io is based on a feature-driven architecture. Each feature has its own widgets, screens, utilities, models, and unique instances. 

![features](https://github.com/GabrielRegis/flutter-grocery-io/assets/34111140/7adca5be-d951-4247-8e5a-f2501e62850e)

In Grocer.io, the application is primarily structured around two main features, each serving distinct functions and user experiences:

#### Groceries

The "Groceries" feature is the heart of the application, encompassing a collection of widgets, atoms, and screens that collectively represent the shopping list – a comprehensive inventory of items to be purchased at the market.

#### Purchases

The "Purchases" feature complements the core shopping list functionality by managing elements related to previously completed purchases. In the future, it will expand to include purchase summaries and financial statistics.

### The core folder

Within our project structure, we include a dedicated "core" folder that serves as the repository for essential features crucial to the application's seamless operation. This folder houses the theme system, navigation framework, and the foundational elements of our design system, for example.

### Shared state management

Here, we also apply the concept of atomic global/shared state, where all shared stores between widgets and screens carry only a single state. One important aspect of atomic states is their ability to interact with and respond to changes in other states.

State management is achieved using the Riverpod library, which aligns perfectly with the concept of atomic state. Within the Riverpod library, it's possible to create mini-stores, often referred to as providers, that encapsulate a single piece of application state along with a series of methods that can modify that state. 

### Widgets with business rules

For widgets that require their own state and specific business rules, Grocer.io's architecture mandates the creation of widget controllers. These controllers are responsible for managing the state and business logic of the widgets, ensuring a clean separation of concerns. Similar to the way atoms are used, in the app, widget controllers are created and managed using Riverpod providers.

Additionally, this design allows for comprehensive unit testing of the widget's methods, ensuring that each component functions correctly and is free from defects.


## App detailed features

- **Add New Items to the Shopping List:** Users can easily add new items to their shopping list, specifying names, quantities, and prices.

- **Remove Items from the Shopping List:** Items that are no longer needed can be removed from the list with a simple action.

- **Edit Item Quantities and Prices:** Users have the flexibility to modify quantities and prices of items in their shopping list as needed.

- **Toggle Item State:** Grocer.io allows users to toggle the state of items, indicating whether an item has been purchased or not. This helps in keeping track of the shopping progress.

- **Local State Persistence:** The application persistently stores all product information, including whether an item has been purchased or not, ensuring that the user's data is preserved between sessions.


## Future features

- **Product Unit Registration:** Users will be able to specify units of measurement for products, such as liters, milliliters, or individual units.

- **Product Category Registration:** Users can categorize their items for better organization.

- **List Sorting:** Lists can be sorted based on product categories and aisle numbers, making the shopping experience more efficient.

- **Past Shopping Summaries:** Access summaries of previous shopping trips to understand purchase history.

<<<<<<< HEAD
- **Expense Statistics:** Gain insights into weekly and monthly spending and track changes in product prices to identify items that have become more expensive or cheaper over time.
=======
- **Expense Statistics:** Gain insights into weekly and monthly spending and track changes in product prices to identify items that have become more expensive or cheaper over time.

>>>>>>> 1398b7e8ba5c34f6feb3e58dca7d2ba4f4659f53
