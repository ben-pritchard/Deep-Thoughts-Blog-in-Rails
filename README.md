###DESCRIPTION

This is a Ruby on Rails blogging app focused on collecting deep thoughts.

Deep thoughts **only!** (e.g. I'm hungry.)

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

<% if @post.photo %>
  <%= image_tag @post.photo.url %>
  <%= image_tag @post.photo.url(:medium) %>
  <%= image_tag @post.photo.url(:thumb) %>
<% end %>
