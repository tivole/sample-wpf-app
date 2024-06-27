# Sample Wix Toolset project for WPF application

This project demonstrates how to create an installer for a simple WPF application using the WiX Toolset (WiX v4). It includes the source code for the WPF application and the necessary WiX configuration files to build an MSI installer.

## Project Structure

```txt
├── setup/
│ ├── build.bat
│ ├── ubuntu.ico
│ ├── Components.wxs
│ ├── Folders.wxs
│ ├── Package.wxs
│ ├── Shortcuts.wxs
│ └── sample-wix-installer.wixproj
├── src/
│ └── App.xaml
│ └── App.xaml.cs
│ └── AssemblyInfo.cs
│ └── MainWindow.xaml
│ └── MainWindow.xaml.cs
│ └── sample-wpf-app.csproj
├── .gitignore
├── README.md
└── sample-wix-installer.sln
```

## Building the Project

1. **Clone the repository:**
    ```sh
    git clone https://github.com/tivole/sample-wpf-app.git
    cd sample-wpf-app
    ```

2. **Build the WPF application and the installer:**
    ```sh
    cd setup
    ./build.bat
    ```

   This script performs the following steps:
   - Publishes the WPF application in release mode as a single, self-contained file.
   - Builds the WiX installer using the published files.

3. **Run the installer:**
    - Navigate to the `publish` folder.
    - Run the generated `sample-wix-installer.msi` installer file.

## Uninstallation

The WiX installer supports uninstallation out of the box. You can uninstall the application from the list of installed programs, and WiX will remove all associated files.

## Acknowledgements


[Create installers for windows apps using WiX v4](https://medium.com/@tivole/create-installers-for-windows-apps-using-wix-v4-d1ec73554dbe)