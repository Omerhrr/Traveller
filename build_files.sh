# build_file.sh
echo "Building new project"
echo "Installing Requirements"

python3.11 -m pip install -r requirements.txt 


echo "Making Migrations"
python3.11 manage.py makemigrations --noinput 

python3.11 manage.py migrate --noinput 

echo "Collect Static..."
python3.11 manage.py collectstatic --noinput --clear