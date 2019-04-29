# Pi4Cast

Pi4Cast est une application embarqué sur Raspberry Pi pouvant prédire le temps grâce à l'algorithme de Zambretti et l'utilisation d'une sonde BME280.

## Pour commencer

Les instructions qui suivent ont pour but de vous guider sur l'installation, la compilation et le déploiment du projet.


### Pré-requis

Avoir une une rapsberry pi avec une distribution à jour de raspbian. Voir  [ce tuto](https://raspbian-france.fr/creez-carte-sd-raspbian-raspberry-pi-windows/) pour l'installation depuis windows.

Un certain nombre de paquets devront être installer sur votre distribution pour que vous puissiez compiler et exécuter corerctement le projet.

```
sudo apt-get install qt5-default qt5-qmake qtdeclarative5-dev qtdeclarative5-dev-tools qml-module-qtquick2 qml-module-qtquick-controls libboost-all-dev
```

Cmake est utilisé dans la compilation du projet, il peut être installer comme suit:

```
sudo apt-get install cmake
```

### Mise en place du capteur



L'installation de la sonde se fait en I2C. Pour cela l'interface I2C peut être activé via la configuration du raspberry.

```
sudo raspi-config
```

![sonde](https://user-images.githubusercontent.com/11860095/38394384-1899c3d4-38e3-11e8-8f8d-a93918971773.png)

La conexion de la sonde se fait sur les ports GPIO 1 pour l'alimentation, 3 pour le SDA, 5 pour le SDC et 6 pour le GND.

### Récupération du dépôt

Git doit être installer sur la distribution. Il est normalement fourni si vous installer la version full de raspbian. S'il ne l'était pas, entrez ceci dans un terminal:

```
sudo apt-get install git
```

CLonage du dépôt:

```
git clone http://github.com/cg1989/piforcast
```
puis aller dans le dossier nouvellement téléchargé.

```
cd piforcast
```

## Compilation

Nous recommandons de créer un dossier build dans lequel sera compilé le projet.

```
mkdir build && cd build
```
Exécutez Cmake puis le Makefile grâce à la comande:

```
cmake .. && make
```


## Exécution

Pour lancer le projet il suffit d'entrer la commande suivante:

```
./src/piforcast
```
## Fonctionnement

L'application propose deux modes de fonctionnement totalement transparents pour l'utilisateur. 

# Local

Le capteur doit être branché sur la raspberry pi hôte, les données sont directement transmises. L'exécution de l'application affiche une interface qui montre les données.

# Distant

Le capteur est branché sur la raspberry pi et celle-ci exporte les données du capteur. Elle peuvent être récupérées sur une autre instance de l'application, sur une machine connecté au réseau.
