<p> This app demostrates a basic movie rating system</p>

Steps to use this app:
1) Clone the app
2) bundle install
3) Change database.yml to modify username and password for the database
4) rake db:create
5) rake db:migrate
6) rake db:seed


Things to be implemented:
- For the sake of sample application, I’m assuming the ‘name’ in different models to be unique, can be changed to user uuid or username, since names are not always unique
- Index method can be improved by doing kaminari pagination / sorting (dint include because of the time constraints).
- Unit Tests (Couldn’t add rspec because of the time constraints)
- User authentication through Devise
- Could have done access control via gems (like cancan, pundit)
