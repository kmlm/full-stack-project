# wishLit Front End

## Summary of Project

I am an avid reader and there are times when I hear about a book or see one advertised and I would like a place to store it. That is why I created wishLit. It is a Single Page Application that allows a user to add specific titles to a wish list with fields of title, author, link to url, and price. A user may not have all of that information, so the only requirement is that a title be entered by a user. The title is then created and assigned to the specific user ID for the user and created in the API as a row in the books table. The title is displayed in the browser using handlebars and a user is able to update or remove each entry in the list. When removing, they are prompted with verification as to whether they would like to delete a book. When editing, they are able to update the fields of the item with the current fields returned to them.

This README focuses on the back-end of the project. The front-end README can be found here:

- [Front-end README](https://github.com/kmlm/wishLit-front-end/blob/master/README.md)

## Development Process

I completed the project with a one to many relationship between a user and books. The Wish list relies on the books resource and pulls individual rows from that table to display for the user.

After creating the databse and launching my initial migration to Heroku, the first step was to scaffold the resource. I generated a scaffold for books that included columns for title, author, isbn, and price and included a reference to user so that it belonged to user in a one to many relationship. I then migrated again with the new migration file created. I assigned the routes for books excepting new and edit.

The user model, routes, serializer, controller and curl scripts were already set up and I did not need to make adjustments. I moved on to the books controller. I set it up so that it inherits from protected controller. I wanted to ensure that a user only had access to the books on their list so for the index, set_user, and create methods I set it up so that it would be run using current_user.

I then started testing curl scripts starting with the Auth curl scripts. They ran as expected without modification. I then created the scripts for CRUD on the resource. I made sure to ensure authorization on each request as it was a protected controller. Once all the scripts were working, I moved on to the front end.

I only made one more migration after that. I decided that instead of isbn, I wanted to display a link. I added a column for link and included it in the serializer. I thought about including a message that displayed how many wish lists had been created by running index of total users. I altered the controller for users to skip authentication on index to allow for that and incorporated the message in the front end, but in the end I decided against the message and took it out. That work is listed under the branch messaging.

## Wireframes

-   [Sign In](https://i.imgur.com/13dBzWb.png)
-  [Sign Up](https://i.imgur.com/TR0GzUS.png)
-  [Landing](https://i.imgur.com/U8sQIH7.png)

## User Stories

- A user will create a unique user id with password and email address.
- Upon logging in, the user will be able to view their wish list or add a title to the list.
- Each book will be added to the wish list table under the unique user ID.
- A user can delete a book from their wish list
- A user will be able to update information on a book within the wish list or delete a book from the list.
- A user will be able to retrieve the wish list its entirety.

Stretch Goals:
- A user will be able to retrieve specific books from the wish list and inventory tables based
on specific information such as author name or title.
- A user will be able to add books to a gift list where they can add books they would buy for others.
- A user will be able to switch which list a book is on.

## ERD

-   [ERD](https://i.imgur.com/kkJ0NB1.png)

## Technology Used

I used rails for the API and ran curl scripts to test the API.

## Future Iterations

In the future, I would like to add more resources with different relationships. A join table with many to many relationship would be a new challenge to incorporate in the app and would allow for a more community feel to the app, because you could have a global resource that many users could have access to and not just their own list.
