$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Source
$atualSDir = (Get-Item -Path ".\").FullName  

Set-Location $scriptDir 

if($scriptDir -eq $atualSDir)
{
    python -m venv .\env # cria o ambiente virtual env
    .\env\Scripts\Activate.ps1 # ativa o ambiente virtual env
    python -m pip install --upgrade pip # atualiza o pip do env
    python -m pip install -r requirements.txt # baixa as libs necessárias em env
    # jupyter notebook # cria um servidor jupyter e abre no navegador 
}



