# ProjectFlow
ProjectFlow is a project management application built with Ruby on Rails. It allows users to manage projects, track activities, and collaborate effectively.

## Features

- User authentication using Devise.
- Project management (CRUD operations).
- Activity tracking for projects.
- Dynamic UI with modals and AJAX for seamless interactions.

---

## Setup Instructions

Follow these steps to set up the repository on your local machine:

### Prerequisites

Ensure you have the following installed:

- Ruby (version `3.x` or compatible)
- Rails (version `7.x` or compatible)
- PostgreSQL (or your preferred database)
- Node.js and Yarn (for managing JavaScript dependencies)

---

### 1. Clone the Repository

```bash
git clone <repository-url>
cd project_conversation
```

### 2. Install Dependencies

Run the following commands to install Ruby and JavaScript dependencies:

```bash
bundle install
yarn install
```

### 3. Set Up the Database

Create and migrate the database:

```bash
rails db:create
rails db:migrate
```

### 4. Start the Server

Run the Rails server:

```bash
rails server
```

Visit `http://localhost:3000` in your browser to access the application.

---

## Contributing

We welcome contributions! Please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Commit your changes with clear messages.
4. Push your branch and create a pull request.

---

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.