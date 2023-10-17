# Grocer.io

Grocer.io is a personal project designed to simplify the creation of shopping lists. This application is under constant development with the aim of providing an efficient and streamlined experience for creating and managing grocery lists. This documentation aims to provide basic information about the project and its current functionality.

## Features

- **Add New Items to the Shopping List:** Users can easily add new items to their shopping list, specifying names, quantities, and prices.

- **Remove Items from the Shopping List:** Items that are no longer needed can be removed from the list with a simple action.

- **Edit Item Quantities and Prices:** Users have the flexibility to modify quantities and prices of items in their shopping list as needed.

- **Toggle Item State:** Grocer.io allows users to toggle the state of items, indicating whether an item has been purchased or not. This helps in keeping track of the shopping progress.

- **Local State Persistence:** The application persistently stores all product information, including whether an item has been purchased or not, ensuring that the user's data is preserved between sessions.

## Future Features

- **Product Unit Registration:** Users will be able to specify units of measurement for products, such as liters, milliliters, or individual units.

- **Product Category Registration:** Users can categorize their items for better organization.

- **List Sorting:** Lists can be sorted based on product categories and aisle numbers, making the shopping experience more efficient.

- **Past Shopping Summaries:** Access summaries of previous shopping trips to understand purchase history.

- **Expense Statistics:** Gain insights into weekly and monthly spending and track changes in product prices to identify items that have become more expensive or cheaper over time.

## Project structure overview

```
📦 src
├─ assets
│  ├─ animations
│  └─ fonts
└─ lib
   ├─ core
   │  ├─ app
   │  ├─ date_and_time
   │  ├─ design_system
   │  ├─ local_storage
   │  ├─ navigation
   │  ├─ providers
   │  ├─ string
   │  └─ theme
   └─ features
      ├─ categories
      ├─ groceries
      │  ├─ atoms
      │  ├─ models
      │  ├─ screens
      │  └─ widgets
      └─ purchases
```
