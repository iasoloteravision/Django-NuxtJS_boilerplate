#!/bin/bash

# Solicitar el nombre del proyecto
read -p "Ingrese el nombre del proyecto Django: " project_name

# Crear el entorno virtual
python3 -m venv $project_name-env
source $project_name-env/bin/activate

# Instalar Django
pip install django

mkdir $project_name
cd $project_name
mkdir backend
cd backend

# Crear el proyecto Django
django-admin startproject $project_name .

# Solicitar las apps a instalar
read -p "Ingrese la app a instalar " app1
python3 manage.py startapp $app1

read -p "Instalar super usuario para control de administrador (y/n): " create_super
if [ "$create_super" == "y" ]; then
    python3 manage.py migrate
    # Crear superusuario
    python3 manage.py createsuperuser
    
fi
# Solicitar si se desea usar pytest
read -p "¿Desea utilizar pytest para las pruebas? (y/n): " use_pytest
if [ "$use_pytest" == "y" ]; then
    # Instalar pytest y pytest-django
    pip install pytest pytest-django
    # Crear archivo de configuración pytest.ini
    echo -e "[pytest]\ndjango_find_project = false" > pytest.ini
fi

echo "Proyecto Django '$project_name' creado con la app '$app1'."
echo "Entorno virtual activado. Para desactivar, ejecuta: deactivate"
echo "Recuerda configurar la base de datos y la app en settings.py y realizar las migraciones."

echo "Instalando el frontend con NuxtJS"
cd ..
read -p "Ingrese el nombre del proyecto NuxtJs (recomendamos llamarlo frontend): " project_name_nuxt
npx nuxi@latest init $project_name_nuxt

echo "Instalando Rest Framework y CORS para manejo de APIs, recuerda modificar settings.py (leer README)"
pip install djangorestframework
pip install django-cors-headers

