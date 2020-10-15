set anio=%date:~11,4%
set mes=%date:~8,2%
set dia=%date:~5,2%

cd C:/
"C:\Program Files\PostgreSQL\9.4\bin\pg_dump.exe" --host localhost --port 5432 -U postgres --format custom --blobs --verbose --file "D:\Backup\db_js.backup" "db_js"
"C:\Program Files (x86)\7-Zip\7z" u -t7z D:\Backup\backup%anio%-%mes%-%dia%.7z D:\Backup\db_js.backup
del D:\Backup\db_js.backup
