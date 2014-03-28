USERS
create = users#new
http://localhost:3000/users/new

read = users#show
Read user with id of 1
http://localhost:3000/users/1

update = users#edit
Edit user with id of 2
http://localhost:3000/users/2/edit

destroy = users#destroy
Delete user with id of 2
delete link from http://localhost:3000/users/2

POSTS
create = posts#new
Create a post for user with id 1
http://localhost:3000/users/1/posts/new

read = posts#index 
Show all posts for user with id 1
http://localhost:3000/users/1/posts

read = posts#show
Show a specific post with id 1 for user with id 1
http://localhost:3000/users/1/posts/1

update = posts#edit
Edit post with id 3 for user with id 1
http://localhost:3000/users/1/posts/3/edit

destroy = posts#destroy
Delete post with id 3 for user with id 1
delete link on http://localhost:3000/users/1/posts/3
