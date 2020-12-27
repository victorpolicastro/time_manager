# README

Time Manager is a webapp to manage employee's work time

# How to run?
1. Clone the git repository
  `git clone git@github.com:victorpolicastro/time_manager.git`
2. Run bundle to install project's dependencies
  `bundle`
3. Open MySQL terminal, create an user (if not created) and give access to the databases time_manager_development and time_manager_test
  `sudo mysql -u root -p`
  `CREATE USER 'rails'@'localhost' IDENTIFIED BY 'rails';`
  `GRANT ALL PRIVILEGES ON time_manager_development.* TO 'rails'@'localhost';`
  `GRANT ALL PRIVILEGES ON time_manager_test.* TO 'rails'@'localhost';`
  `\q`
4. Run the following command to setup database with seed
  `rails db:setup`
5. Start the server
  `bin/rails s`

# Linter
To see linter offenses, run:
  `rubocop`

# Tests
To run all project tests, run:
  `rspec`

# Next steps
1. View: marks per day
2. Hour calulation
3. Extract marks to spreadsheet
4. Edit user
5. Create specs for 100% of coverage
