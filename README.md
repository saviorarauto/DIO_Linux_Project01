# DIO_Linux_Project01
This is my first Bash script for automating the creation of repositories, groups, and users in the Linux terminal.

# 📌 Passo a Passo Projeto Script IAC no Linux

## 1. Acessando e Criando Diretórios

1. No terminal do Linux, acesse a pasta home do usuário:
   ```bash
   cd ~
   ```
2. Crie uma pasta chamada `projeto_infraestrutura_codigo_IAC`:
   ```bash
   mkdir -p /scripts/projetos/projeto_infraestrutura_codigo_IAC
   ```
3. Acesse a pasta criada:
   ```bash
   cd /scripts/projetos/projeto_infraestrutura_codigo_IAC/
   ```
4. Crie um arquivo chamado `criar_estrutura.sh`:
   ```bash
   sudo touch criar_estrutura.sh
   ```
5. Edite o arquivo `criar_estrutura.sh`:
   ```bash
   sudo nano criar_estrutura.sh
   ```
6. Torne o arquivo executável:
   ```bash
   chmod +x /scripts/projetos/projeto_infraestrutura_codigo_IAC/criar_estrutura.sh
   ```
7. Execute o script com privilégios de superusuário:
   ```bash
   sudo ./criar_estrutura.sh
   ```

## 2. Definições do Script

- Excluir diretórios, arquivos, grupos e usuários criados anteriormente.
- Todo provisionamento deve ser feito em um arquivo do tipo Bash Script.
- O dono de todos os diretórios criados será o usuário `root`.
- Todos os usuários terão permissão total dentro do diretório público.
- Os usuários de cada grupo terão permissão total dentro de seu respectivo diretório.
- Os usuários não poderão ter permissão de leitura, escrita e execução em diretórios de departamentos que não pertencem.

## 3. Explicação dos Comandos

### Comando `useradd`

Na criação dos usuários:
- `-m`: Cria um diretório home para o usuário (exemplo: `/home/carlos`).
- `-s /bin/bash`: Define o shell padrão como `/bin/bash`.
- `-G GRP_ADM`: Adiciona o usuário ao grupo especificado.

### Comando `chown`

Usado para alterar o proprietário e o grupo de arquivos/diretórios:
- `-R`: Aplica a mudança de forma recursiva.
- `root:GRP_ADM`: Define o proprietário como `root` e o grupo como `GRP_ADM`.

### Comando `chmod`

Usado para alterar permissões de arquivos/diretórios:
- `-R`: Aplica a mudança recursivamente.
- `770`: Permissões para diretórios específicos:
  - `7` (proprietário): leitura, escrita e execução.
  - `7` (grupo): leitura, escrita e execução.
  - `0` (outros): sem permissões.
- `777`: Permissões para o diretório `/publico`:
  - `7` (proprietário, grupo e outros): leitura, escrita e execução.

## 4. Atendimento às Definições

1. **Provisionamento em Bash Script:** ✅ Sim, o script é um arquivo Bash.
2. **Dono dos diretórios como `root`**: ✅ Sim, definido via `chown -R root:GRP_*`.
3. **Permissão total no diretório público**: ✅ Sim, configurado com `chmod -R 777 /publico`.
4. **Permissão total para usuários nos seus diretórios**: ✅ Sim, configurado com `chmod -R 770`.
5. **Restrições para usuários não pertencentes ao grupo**: ✅ Sim, `chmod 770` impede acesso indevido.

---

