1. ssh into server
2. install python and pip `apt-get install python3` `apt-get install python3-pip`
3. install flask `pip3 install flask`
4. put __init__.py into project folder somewhere on server
5. install nginx `apt install nginx`
6. set up nginx with the proper settings 
   1. (eg `nano /etc/nginx/sites-enabled/flask_project` & put contents on nginx.settings in there in this very simple example)
7. unlink default nginx settings `unlink /etc/nginx/sites-enabled/default`
8. install gunicorn `apt-get install gunicorn`
9. go to parent directory of `flask_project` (root project folder to be served) and run `gunicorn -w 3 folder_name:app`

how to view access logs:
tail -f /path/to/log

how to view error logs:
tail -f /var/log/nginx/error.log