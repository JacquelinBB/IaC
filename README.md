<h1 align="center">IaC (Infraestrutura como Código)</h1>

:question: Script para facilitar a criação de usuário em lotes, seus respectivos grupos e permissões. Feito no SO Linux Server, com a distribuição Ubuntu.

#### Desafio
- Crie os seguintes diretórios: publico, adm, ven e sec.
- Crie os seguintes grupos: GRP_ADM, GRP_VEN, e GRP_SEC.
- Crie os seguintes usuários: carlos, maria, joao_, debora, sebastiana, roberto, josefina, amanda, rogerio.
- Para o grupo GRP_ADM atribua os seguinte usuários: carlos, maria, joao_.
- Para o grupo GRP_VEN atribua os seguinte usuários: debora, sebastiana, roberto.
- Para o grupo GRP_SEC atribua os seguinte usuários: josefina, amanda, rogerio.
- O dono de todos os diretórios criados será o usuário root.
- Todos os usuários terão permissão total dentro do diretório publico.
- Os usuários de cada grupo terão permissão total dentro de seu respectivo diretório.
- Os usuários não poderão ter permissão de leitura, escrita e execução em diretórios de departamentos que eles não pertencem.

>## Antes de iniciar as etapas a seguir, esteja como super usuário no root
# Download do script
### 🟤 Clone o repositório usando o git bash
```
git clone <https://github.com/HyTech-Motivando-o-Ensino/hytech-backend.git>
```
`OBS: É necessário ter instalado o git, acesse em: https://git-scm.com/downloads`

# Execução
### 🟤 Deixe esse arquivo executável
```
chmod +x script.sh
```
### 🟤 Rode o arquivo
```
./script.sh
```

>## Ao finalizar, caso queira deletar o script realizado
# Excluir alterações feitas pelo script
### 🟤 Excluir pastas
```
rm -rf "nome da pasta"
```
### 🟤 Excluir usuários
```
userdel -r -f "nome do usuário"
```
### 🟤 Excluir grupos
```
groupdel "nome do grupo"
```
# Confirmação dessa exclusão
### 🟤 Verificar grupos existentes na sua máquina
```
cat /etc/group
```
### 🟤 Verificar usuários existentes na sua máquina
```
cat /etc/passwd
```
