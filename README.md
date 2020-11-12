# Calculator

Calculator is a plasma mobile application that allows you to make calculations. Application includes:

-basic calculator

This features will soon be added to the Calculator:

-scientific calculator

-programmer calculator

## Building

Use flatpak-builder to install Calculator:

flatpak-builder flatpak-build --force-clean --ccache *.json

Previously, ensure that you have installed KDE SDK:

flatpak install flathub org.kde.Sdk

## Usage

Use

flatpak-builder --run flatpak-build *.json calculator

to run Calculator

## Authors

Antoni Przybylik  
Nicolas Fella

## License

GPL v3.0 (https://raw.githubusercontent.com/antoniprzybylik/calculator/master/LICENSE)


