# Tea Subscription Admin Portal

This project consists of two parts: a **Rails API** backend and a **React** frontend. It is designed to manage subscriptions, associated customers, and teas.

---

## Project Structure

- **Backend (Rails API)**: Handles subscriptions, customers, and teas, and serves the data via API endpoints.
- **Frontend (React)**: Consumes the API and displays subscription data to users with options for filtering, viewing details, and toggling subscription status.

---

## Getting Started

### Backend (Rails API)

1. **Clone the repository**:

   ```bash
   git clone <your-repository-url>
   cd <your-project-folder>/backend
   ```

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

1. **Navigate to the frontend directory**:

   ```bash
   cd <your-project-folder>/frontend
   ```

2. **Install dependencies**:

   ```bash
   npm install
   ```

3. **Start the React development server**:

   ```bash
   npm start
   ```

   The frontend should now be running at `http://localhost:5173`.

---

## 🛠 API Endpoints

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
   rspec
   ```

2. **Check test coverage** with SimpleCov:

   ```bash
   open coverage/index.html
   ```

## Future Improvements

- Add user authentication and authorization.
- Improve styling with a more refined design.

---