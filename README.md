# JPACRUDProject
---

A solo weekend project I completed for Skill Distillery, a coding boot camp.

### Overview
---

I decided to start building this site to get some practice for a future plan to build a site to act as a fleet builder tool for a table top miniature strategy game called Star Wars Armada. It is a simple site to display available capital ships containing most of the stats.  This data is stored in a database and as an Entity in the java code. It also is practice for basic CRUD operations. I will need to continue to work on this to complete a working version for a good fleet/list builder for this game.

### Technologies and Topics
---

So I used a Spring boot project to run and hold all the DAO's and controllers along with all the associated jsp files that make up the front end of the site. Basic functionality of the site is as follows; the user can look up a list of ship(s) in the database using keyword searches based of the Class of the ships. IE typing in "CR" to find all ships with "CR" in their class names. A search for finding all ships below a point value the user types in, this would be especially useful for when this is built as a fleet builder, allowing the user to find all ships he can use within a given range. Another search is also available allowing the user to find all ships for a given alignment (Empire or Rebellion) to find all the ships they can use for their fleet, or just a general 'search all' button allowing the user to easily look up all ships in the database. Following this and what is needed for CRUD operations I also included a 'delete' button on the detailed screen where the user is easily able to delete that ship in the database if the ship is ever removed from the game and is no longer needed. An update forum on the same screen, allows the user to modify a ship.  This can be used incase of errata or changes to the ship in the game. Or simply they can add a ship via the home screen incase any new ships are added to the game, allowing the site to always be easily kept up to date.
