Adjunto los siguientes pasos para agregar un flow y un custom field a un repositorio de git

Es necesario tener lo siguiente:

    - Una org de salesforce
    - El flow ya creado o contar con un flow existente
    - Un custom field existente
    - Tener git correctamente instalado en la computadora
    - Haber creado un repositorio público en GitHub y tener conectado este repositorio a la carpeta de tu proyecto
    - Contar con la extension de salesforce instalada en visual studio code
    - Haber creado un proyecto con el siguiente comando "SFDX: Create Project with Manifest"
    - Haber conectado tu organización a tu proyecto con el comando "SFDX: Authorize an Org"

Pasos a seguir:

    1.- Entrar a tu organización de salesforce
    2.- Ir a setup
    3.- Dentro de la organización buscar "Package Manager"
    4.- Crear un nuevo package y asignarle un nombre
    5.- Hacer click en add
    6.- En component type elegir la opción "Flow definition" y seleccionar el flow que querramos elegir
    7.- En component type elegir la opción "Custom field" y seleccionar el field que querramos seleccionar
    8.- Una vez agregadas ambas cosas se podrá observar en la pestaña de components los componentes que definen nuestro flow y nuestro custom field
    9.- Dentro del proyecto en visual studio code entrar a "manifest/package.xml" y dentro de este documento agregar los componentes de la siguiente manera

        <types>
            <members>El nombre de tu componente</members>
            <name>El tipo de componente</name>
        </types>

    10.- Una vez agregados todos los componentes que se pueden observar dentro del package hacer click derecho en package.xml y seleccionar la opción "SFDX: Retrieve source in Manifest from Org" lo cual descargará de tu org los componentes necesarios
    11.- Una vez realizado esto agregar los archivos al commit para subirlos a github de la siguiente manera

        git add tuArchivoASubir (Un add por cada archivo a subir)
        git commit -m "Tus comentarios de lo que vayas a subir"
        git push origin main (en caso de que la rama de tu repositorio se llame main)

    12.- Listo, podrás ver tus cambios dentro de tu repositorio en git

Disclaimer

    En este ejemplo subi no solamente el flow y el custom field, si no que subi unos lightning web components en los que me encuentro trabajando como práctica de paso para no perderlos. Por lo tanto el flow y el custom field que se subieron como ejemplo son los siguientes:

        Flow - TareitaFlow
        Custom field - Contact.Languages__c
        