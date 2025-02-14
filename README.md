```md
# Projeto Terraform AWS EC2 com CI/CD

Este projeto usa Terraform para criar e gerenciar uma instância EC2 e uma VPC na AWS. Ele também configura um pipeline CI/CD utilizando GitHub Actions para validação e implantação automática.

## Estrutura do Projeto

- `main.tf`: Arquivo principal do Terraform que define a VPC, Subnet e a instância EC2.
- `variables.tf`: Arquivo de variáveis que define as variáveis usadas no projeto.
- `outputs.tf`: Arquivo de saídas que exibe informações sobre os recursos criados.
- `.github/workflows/ci.yml`: Workflow de integração contínua para validação e plano do Terraform.
- `.github/workflows/cd.yml`: Workflow de entrega contínua para aplicar a configuração do Terraform e criar os recursos na AWS.

## Pré-requisitos

- [Terraform](https://www.terraform.io/downloads) instalado.
- Conta AWS com credenciais configuradas (AWS Access Key e Secret Key).
- [Git](https://git-scm.com/downloads) instalado.
- Repositório GitHub.

## Configuração e Uso

### 1. Clonar o Repositório

Clone o repositório para sua máquina local:

```sh
git clone https://github.com/seu-usuario/seu-repositorio.git
cd seu-repositorio
```

### 2. Configurar Variáveis do Terraform

Edite o arquivo `variables.tf` conforme necessário para configurar as variáveis do seu ambiente.

### 3. Inicializar e Aplicar o Terraform

Inicialize o Terraform e aplique a configuração para criar a VPC, Subnet e a instância EC2:

```sh
terraform init
terraform apply
```

### 4. Configurar CI/CD com GitHub Actions

Adicione as credenciais da AWS aos segredos do repositório no GitHub:

1. Vá para as configurações do repositório no GitHub.
2. Clique em "Secrets" no menu à esquerda.
3. Adicione dois segredos: `AWS_ACCESS_KEY_ID` e `AWS_SECRET_ACCESS_KEY`.

### 5. Verificar Workflows de CI/CD

Os workflows de CI/CD são acionados automaticamente em cada push ou pull request para a branch `main`. O CI valida e planeja a configuração do Terraform, enquanto o CD aplica a configuração para criar a VPC, Subnet e a instância EC2.

## Outputs

Após a execução do Terraform, as seguintes saídas são geradas:

- **vpc_id**: O ID da VPC criada.
- **subnet_id**: O ID da Subnet criada.
- **instance_id**: O ID da instância EC2 criada.
- **public_ip**: O endereço IP público da instância EC2.

## Limpeza

Para destruir os recursos criados (VPC, Subnet e instância EC2), execute:

```sh
terraform destroy
```

## Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues e pull requests.

## Licença

Este projeto está licenciado sob a [MIT License](LICENSE).