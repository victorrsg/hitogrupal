#!/bin/bash
clear

echo "*** REINICIAR TODO"
rm -rf .git
rm principal

echo "*** CRAR UN CONTROL DE VERSION PARA EL PROYECTO"
git init

git config --unset-all color.ui
echo "*** CONFIGURACION LOCAL"
git config user.name "BryanLeines"
git config user.email "johnbryan.leines@campusfp.es"
git config color.ui auto
git core.editor nano

echo "*** CONFIGURACION LOCAL"
grep -e name -e email \C:\Users\Campus FP\Desktop\Grupal\.git\config

echo "*** CREAR EL PROGRAMA PRINCIPAL DEL PROYECTO"
touch principal

echo "*** COMMIT"
git status
git add .
git commit -m "Principal"

echo "*** HISTORIAL DEL REPOSITORIO LOCAL"
git log --oneline

echo "*** CAMBIAR EL NOMBRE DE LA RAMA MASTER POR LA MAIN PORQUE GITHUB RECONOCE A LA RAMA PRINCIPAL CON ESE NOMBRE"
git branch -M main

echo "*** DEFINIR EN LA VARIABLE ORIGIN EL REPOSITORIO REMOTO"
git remote add origin https://github.com/BryanLeines/colaborar.git

echo "*** SUBIR EL REPOSITORIOLOCAL AL REMOTO"
git push -u origin main

read -rsp $'Press enter to continue...\n'

