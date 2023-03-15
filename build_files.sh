# build_file.sh
echo "Building new project"
echo "Installing Requirements"

python -m pip install -r requirements.txt 


echo "Making Migrations"
python manage.py makemigrations --noinput 

python manage.py migrate --noinput 

echo "Collect Static..."
python manage.py collectstatic --noinput --clear