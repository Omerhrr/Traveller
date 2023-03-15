# build_file.sh
echo "Building new project"
echo "Installing Requirements"

# build_files.sh
pip install -r requirements.txt

echo "Collect Static..."
python3.9 manage.py collectstatic --noinput --clear

echo "Making Migrations"
python3.9 manage.py makemigrations --noinput 

python3.9 manage.py migrate --noinput 

