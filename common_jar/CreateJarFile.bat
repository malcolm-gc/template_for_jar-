
REM  This batch file is intended for a project directory in the Processing dir structure
REM
REM  example : 
REM  C:\Users\user_name\Documents\Processing\project\common_jar
REM  
REM  The SET command must be modified to SET library_name=package_name
REM
REM  The package_name must be the same as the package name declared in the .java files
REM 
REM  The batch file when run will
REM 
REM     compile any java files in the primary directory creating 
REM     a directory named for the package
REM     
REM     create new directories   ( if the directories exist expect error messages )
REM          \Processing\Libraries\package_name 
REM          \Processing\Libraries\package_name\library    
REM
REM 	copy the generated .jar file to  \Processing\Libraries\package_name\library 




SET  library_name=common

javac -d . *.java && jar cf %library_name%.jar *

mkdir ..\..\libraries\%library_name%
mkdir ..\..\libraries\%library_name%\library

copy %library_name%.jar ..\..\libraries\%library_name%\library