@echo off
cls
echo ===================================================
echo     ORACLE CLOUD AI INSTANCE MANAGEMENT UTILITY
echo ===================================================
echo  [1] Log directly into the Ubuntu server terminal
echo  [2] Interactive Chat with Llama 3.1 (8B)
echo  [3] Interactive Chat with Qwen 2.5 Coder (7B)
echo  [4] Interactive Chat with Llama 3 (Latest)
echo  [5] View Live Server Logs / Troubleshoot
echo ===================================================
echo.
set /p choice="Select an option (1-5): "

if "%choice%"=="1" ssh -i C:\Users\Jungl\oci_cloud.key ubuntu@163.192.23.155
if "%choice%"=="2" ssh -t -i C:\Users\Jungl\oci_cloud.key ubuntu@163.192.23.155 "sudo docker exec -it ollama ollama run llama3.1:8b"
if "%choice%"=="3" ssh -t -i C:\Users\Jungl\oci_cloud.key ubuntu@163.192.23.155 "sudo docker exec -it ollama ollama run qwen2.5-coder:7b"
if "%choice%"=="4" ssh -t -i C:\Users\Jungl\oci_cloud.key ubuntu@163.192.23.155 "sudo docker exec -it ollama ollama run llama3:latest"
if "%choice%"=="5" ssh -i C:\Users\Jungl\oci_cloud.key ubuntu@163.192.23.155 "sudo docker logs --tail 50 -f ollama"
