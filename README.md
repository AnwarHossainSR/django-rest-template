### README.md

This is a Django REST API project. To get started, follow these steps:

1. Clone the repository:

```
git clone git@github.com:AnwarHossainSR/django-ecommerce-api.git
```

2. COpy env.example to .env file and update the environment variables:

```
cp .env.example .env

```

3. Create and activate a virtual environment:

```
python3 -m venv venv
source venv/bin/activate
```

4. Install the project dependencies:

```
pip install -r requirements.txt
```

5. Create database migrations:

```
python manage.py makemigrations
```

6. Migrate the database:

```
python manage.py migrate
```

7. Start the development server:

```
python manage.py runserver
```

You can now access the API at `http://localhost:8000`.

### Important commands

Here are some important commands that you may need to use when working with this Django REST API project:

- **Create database migrations:** `python manage.py makemigrations`
- **Migrate the database:** `python manage.py migrate`
- **Start the development server:** `python manage.py runserver`
- **Create a superuser:** `python manage.py createsuperuser`
- **Collect static files:** `python manage.py collectstatic`
- **Run tests:** `python manage.py test`
- **Create an app:** `python manage.py startapp <app_name>`
- **Create requirements.txt file:** `pip freeze > requirements.txt`
- **Install all packages from requirements.txt file:** `pip install -r requirements.txt`

### Deployment

To deploy this Django REST API project to production, you can use a variety of different methods. One popular option is to use a cloud hosting provider such as Heroku or AWS Elastic Beanstalk.

Another option is to deploy the project to your own server. To do this, you will need to install the necessary dependencies on your server, such as Python, Django, and the Django REST Framework. Once you have installed the necessary dependencies, you can copy the project files to your server and start the development server.

For more information on deploying Django REST API projects, please see the Django REST Framework documentation: https://www.django-rest-framework.org/.
