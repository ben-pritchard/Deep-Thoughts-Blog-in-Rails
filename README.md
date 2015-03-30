###DESCRIPTION

This is a Ruby on Rails blogging app focused on collecting deep thoughts.

Deep thoughts **only!** (e.g. I'm hungry.)

Beware: things that don't work yet:

  AJAX: The "Alter" comment button on the post show page. I still need to figure out how to get the edit box to go away and for the edit to keep the original text rather than only update the comment with the new changes.
  ("Erase" and "Leave a comment" work like a charm though!)

  Paperclip displaying "Missing" photos (whether loaded or not)

  <% if @post.photo %>
    <%= image_tag @post.photo.url %>
    <%= image_tag @post.photo.url(:medium) %>
    <%= image_tag @post.photo.url(:thumb) %>
  <% end %>

###SETUP INSTRUCTIONS

To set up your server from your terminal, go to your project directory and enter `rails s`

Make sure postgres is running by going to your terminal and running `postgres`

Then go to localhost:3000 in your browser to view the app.

Or check it out on heroku: https://deep-thoughts-blog.herokuapp.com/

###COPYRIGHT INFORMATION

GPL v2

###LICENSE INFORMATION

GPL v2

###AUTHOR

Ben Pritchard

ben.s.pritchard@gmail.com

<br>
