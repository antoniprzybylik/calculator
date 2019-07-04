# Calculator

Calculator is a plasma mobile application that allows you to make calculations. Application includes:

-basic calculator

This features'll soon be added to the Calculator:

-scientific calculator

-programmer calculator

## Building

Use flatpak-builder to install Calculator

flatpak-builder flatpak-build --force-clean --ccache *.json

Ensure that you have installed KDE SDK

flatpak install flathub org.kde.Sdk

## Usage

Use

flatpak-builder --run flatpak-build *.json calculator

to run Calculator

## Authors

Antoni Przybylik

## License

GPL (http://www.gnu.org/licenses/gpl-3.0.txt)


