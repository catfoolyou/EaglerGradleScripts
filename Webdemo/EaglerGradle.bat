@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%"=="" @echo off
@rem ##########################################################################
@rem
@rem  EaglerGradle startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%"=="" set DIRNAME=.
@rem This is normally unused
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and EAGLER_GRADLE_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS="-Djava.library.path=versions/1.12/1.12-natives"

@rem Find java.exe
set JAVA_HOME=C:/Program Files (x86)/jGRASP/bundled/java

if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if %ERRORLEVEL% equ 0 goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=C:/Program Files (x86)/jGRASP/bundled/java
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\EaglerGradle-1.0.0.jar;%APP_HOME%\lib\oshi-core-1.1.jar;%APP_HOME%\lib\jna-4.4.0.jar;%APP_HOME%\lib\platform-3.4.0.jar;%APP_HOME%\lib\icu4j-core-mojang-51.2.jar;%APP_HOME%\lib\jopt-simple-5.0.3.jar;%APP_HOME%\lib\codecjorbis-20101023.jar;%APP_HOME%\lib\codecwav-20101023.jar;%APP_HOME%\lib\libraryjavasound-20101123.jar;%APP_HOME%\lib\librarylwjglopenal-20100824.jar;%APP_HOME%\lib\soundsystem-20120107.jar;%APP_HOME%\lib\netty-all-4.1.9.Final.jar;%APP_HOME%\lib\commons-lang3-3.5.jar;%APP_HOME%\lib\commons-io-2.5.jar;%APP_HOME%\lib\commons-codec-1.10.jar;%APP_HOME%\lib\jinput-2.0.5.jar;%APP_HOME%\lib\jutils-1.0.0.jar;%APP_HOME%\lib\fastutil-7.1.0.jar;%APP_HOME%\lib\log4j-api-2.8.1.jar;%APP_HOME%\lib\log4j-core-2.8.1.jar;%APP_HOME%\lib\vecmath-1.5.2.jar;%APP_HOME%\lib\commons-compress-1.8.1.jar;%APP_HOME%\lib\httpclient-4.3.3.jar;%APP_HOME%\lib\commons-logging-1.1.3.jar;%APP_HOME%\lib\httpcore-4.3.2.jar;%APP_HOME%\lib\lwjgl-2.9.4-nightly-20150209.jar;%APP_HOME%\lib\lwjgl_util-2.9.4-nightly-20150209.jar;%APP_HOME%\lib\jsr305-3.0.1.jar;%APP_HOME%\lib\1.12.jar;%APP_HOME%\lib\teavm-jso-apis-0.7.0.jar;%APP_HOME%\lib\teavm-jso-0.7.0.jar;%APP_HOME%\lib\teavm-interop-0.7.0.jar


@rem Execute EaglerGradle
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %EAGLER_GRADLE_OPTS%  -classpath "%CLASSPATH%" Start %*

:end
@rem End local scope for the variables with windows NT shell
if %ERRORLEVEL% equ 0 goto mainEnd

:fail
rem Set variable EAGLER_GRADLE_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
set EXIT_CODE=%ERRORLEVEL%
if %EXIT_CODE% equ 0 set EXIT_CODE=1
if not ""=="%EAGLER_GRADLE_EXIT_CONSOLE%" exit %EXIT_CODE%
exit /b %EXIT_CODE%

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
