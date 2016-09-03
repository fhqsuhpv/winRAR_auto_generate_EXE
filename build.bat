@ECHO OFF

if exist app/version (
	del demo.exe
	winrar a -r -ep1 -sfx -iiconsetup.ico -z"rar.conf" demo.exe app/*.*
) else (
    echo "No version file, won't package!"
)

