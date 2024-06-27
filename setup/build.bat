@REM Build WPF App
dotnet publish -c Release -p:PublishSingleFile=true --self-contained -o ./publish

@REM Build Wix Installer
msbuild sample-wix-installer.wixproj /t:Build /p:Platform=x64 /p:Configuration=Release /p:BuildProjectReferences=false /p:OutputPath=./publish
