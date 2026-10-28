# Script: auto_report.ps1
# Tac gia: Nguyễn Xuân Cường
# Ngay tao: 28/10/2026

Write-Host "Dang loc log..."

"===BAO CAO LOI===" > auto_report.txt
Get-Content logs/clinic.log | Select-String "ERROR" >> logs/auto_report.txt

Write-Host "Hoan thanh!"