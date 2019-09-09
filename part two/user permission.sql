# making a logged in user
CREATE USER 'Log_in_user'@'localhost' IDENTIFIED BY 'password';
GRANT INSERT ON yelp_db.review TO 'Log_in_user'@'localhost';
FLUSH PRIVILEGES;
quit

# making a Business analysts user
CREATE USER 'Analysts'@'localhost' IDENTIFIED BY 'password';
GRANT CREATE VIEW ON yelp_db . * TO 'Analysts'@'localhost';
GRANT SHOW VIEW ON yelp_db . * TO 'Analysts'@'localhost';
FLUSH PRIVILEGES;
quit


# making a Developers user
CREATE USER 'Developers'@'localhost' IDENTIFIED BY 'password';
GRANT CREATE ON yelp_db . * TO 'Developers'@'localhost';
GRANT INDEX ON yelp_db . * TO 'Developers'@'localhost';
GRANT INSERT ON yelp_db . * TO 'Developers'@'localhost';
GRANT UPDATE ON yelp_db . * TO 'Developers'@'localhost';
GRANT DELETE ON yelp_db . * TO 'Developers'@'localhost';
FLUSH PRIVILEGES;
quit



# making a Database_Admin user
CREATE USER 'Admin'@'localhost' IDENTIFIED BY 'password';
# provide the user with access to the information (allows read, edit, execute and perform all tasks across all the databases and tables.)
GRANT ALL PRIVILEGES ON yelp_db . * TO 'Admin'@'localhost';
# reload all the privileges
FLUSH PRIVILEGES;
quit



