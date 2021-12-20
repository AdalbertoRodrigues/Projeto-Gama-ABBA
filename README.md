<h1 align="center">
<img src="https://i.imgur.com/MqUnxEt.png" title="Grupo Agora Vai" />
</h1>

<h3 align="center">
  Grupo ABBA Devops
</h3>

<p align="center">
  <a href="#sobre o projeto">Sobre o projeto</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#Desenvolvedores">Desenvolvedores</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#tecnologias">Tecnologias</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#iniciando">Iniciando</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#funcionalidades">Funcionalidades</a>
</p>

## 👨🏻‍💻 Sobre o projeto

<p>Objetivo:<BR><BR>
Exercitar os conhecimentos adquiridos do treinamento

Meta:<br><BR>
●	Criar uma rede isolada para esta aplicação

●	Criar uma pipeline de infraestrutura para provisionar uma imagem que será utilizada em um cluster kubernetes(multi master)

●	Criar uma pipeline para provisionar um cluster multi master utilizando a imagem criada na pipeline de infraestrutura 

●	Criar uma pipeline para provisionar o banco de dados (dev, stage, prod) que será utilizado nas aplicações que estarão no kubernetes. Esta base de dados, será provisionada em uma instância privada, com acesso a Internet via Nat Gateway na mesma vpc do kubernetes multi master 

●	Criar uma pipeline de desenvolvimento para deployar os ambientes de uma aplicação Java (dev, stage, prod) com ligação a um banco de dados mysql-server (utilizar o cluster kubernetes(multi master) provisionado pela pipeline de infraestrutura 
</br>

### 💻 Desenvolvedores
- [Adalberto](https://www.linkedin.com/in/adalberto-r-t-jr)
- [Bruno Roman](https://www.linkedin.com/in/bruno-roman%C2%AE-291bb371/)
- [Bruno Frizanco]()
- [Alan Souza](https://www.linkedin.com/in/alan-souza-a1694016a/)

## 🚀 Tecnologias

Tecnologias que utilizamos para desenvolver este Projeto:

- [AWS](https://aws.amazon.com/)
- [Ubuntu](https://ubuntu.com/)
- [MySql](https://www.mysql.com/)
- [Terraform](https://www.terraform.io/)
- [Ansible](https://www.ansible.com/)
- [Jenkins](https://www.jenkins.io/)
- [Kubernets](https://kubernetes.io/)
- [Docker](https://www.docker.com/)

## 💻 Iniciando

- As instruções a seguir irão te guiar para que você crie uma cópia do projeto na sua máquina local.

### Pré-requisitos

- Máquina com Jenkins instalado.

**Clone o projeto e acesse a pasta**

```bash
$ git clone https://github.com/AdalbertoRodrigues/Projeto-Gama-ABBA.git
```

Agora basta executar as pipelines pelo próprio Jenkins!
  
Tudo pronto! 


## ⚙️ Funcionalidades
Funcionalidades que o sistema oferece:
  
  
- Criação automática de Imagem (AMI) baseada em script Terraform/Ansible
  [PipelineInfra](http://15.229.15.123:8080/job/PipelineInfra/)
  
  
  
- Criação de Infra Multi Master com 3 Máquinas Master, 3 Work Nodes e HAProxy
  [PipelineMultiMaster](http://15.229.15.123:8080/job/PipelineMultiMaster/)
  
  
  
  
- Criação de Máquinas MySql em rede privada
  [PipelineSQL](http://15.229.15.123:8080/job/PipelineSQL/)
  
  
  
  
- Criação de container Docker para aplicação Java && Deploy de container no cluster Kubernets Multi Master
  [PipelineApp](http://15.229.15.123:8080/job/PipelineApp/)
