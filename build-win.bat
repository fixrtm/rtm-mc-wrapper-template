@echo off

cd /D "%~dp0"

powershell -NoProfile -ExecutionPolicy Unrestricted ./buildscript/build.ps1
