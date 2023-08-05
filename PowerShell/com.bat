// powersheel é uma tecnologia microsoft, é orientado a objetos. foi feito em cima
//do dotnet framework
//msdn

$service = Get-Service -Name "Totvs DBAccess" -ComputerName "nome"
if ($service.Status -eq "Running"){
    echo "parando"
    $service.Stop()
    echo "iniciando"
    $service.Start()
}else {
    echo "o serviço não está sendo executado"
}

//variaveis de ambiente
echo $env:path
echo $env:path | getmenber
echo $env:path.GetType() //.GetType() metodo implementado na class object
echo $env:path.Split(';')

//comando é diferente de apelidio
get-alias 
get-alias -Name dir

//
get-command
get-command -name *rename* //vc ira descobrir comando que tem esta porção de string 
get-command -verb *rename* //vc ira descobrir comando que tem esta porção de string 
get-help -name rename-item

//Criar apelido para comandos
new-alias -name "rename" rename-item 