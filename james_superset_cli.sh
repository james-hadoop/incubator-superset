python setup.py build

python setup.py install

# Create an admin user (you will be prompted to set username, first and last name before setting a password)
superset fab create-admin \
    --username james \
    --firstname james \
    --lastname james \
    --email james@james.com \
    --password james

# Initialize the database
superset db upgrade

# Loading examples
superset load_examples

# Create default roles and permissions
superset init

FLASK_ENV=development FLASK_APP="superset.app:create_app()" \
flask run -p 8088 --with-threads --reload --debugger --host=0.0.0.0

superset run -p 8088 --with-threads --reload --debugger