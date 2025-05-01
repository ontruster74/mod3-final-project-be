# Tea Subscription Admin Portal

This project consists of two parts: a **Rails API** backend and a **React** frontend. It allows a hypothetical admin user to manage the status of a number of tea box subscriptions, and view each subscription's associated customers and teas.

---

# Contributors

Rig Freyr - GitHub: https://github.com/ontruster74

## Project Structure

- **Backend (Rails API)**: Handles subscriptions, customers, and teas, and serves the data via API endpoints.
- **Frontend (React)**: Consumes the API and displays subscription data to users with options for filtering, viewing details, and toggling subscription status.

Backend Wireframe Structure:

![BackendWireframe](https://github.com/user-attachments/assets/06ccc925-7587-4ab4-a6b2-c37e2ccb5e91)

---

## Getting Started

### Backend (Rails API)

1. **Clone the repository**:

2. **Install dependencies**:

   ```bash
   bundle install
   ```

3. **Set up the database**:

   ```bash
   rails db:create
   rails db:migrate
   rails db:seed 
   ```

4. **Start the Rails server**:

   ```bash
   rails server
   ```

   The backend should now be running at `http://localhost:3000`.

---

### Frontend (React)

1. **Clone the Frontend repo at https://github.com/ontruster74/mod3-final-project-fe**:


2. **Install dependencies**:

   ```bash
   npm install
   ```

3. **Start the React development server**:

   ```bash
   npm run dev
   ```

   The frontend should now be running at `http://localhost:5173`.

---

## API Endpoints

- **GET /subscriptions**: Fetches all subscriptions.
- **GET /subscriptions/:id**: Fetches a single subscription by ID.
- **PATCH /subscriptions/:id**: Updates a subscription's status (active/cancelled).

---

## Development Environment

- **Backend**: Rails API
- **Frontend**: React with Router for navigation
- **Database**: PostgreSQL 

---

## Running Tests

### Backend (Rails API)

1. **Run tests**:

   ```bash
   bundle exec rspec spec
   ```

2. **Check test coverage** with SimpleCov:

   ```bash
   open coverage/index.html
   ```

## Future Improvements

- Add user authentication and authorization.
- Improve styling with a more refined design.
- Add more endpoints to complete backend CRUD functionality in case the scope of the application needs to expand.

---
