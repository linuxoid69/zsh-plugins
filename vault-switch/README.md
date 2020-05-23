# Vault-switch plugin

## Description

This plugin can switch among nodes of Vault - HashiCorp  

## Installation
```bash
curl https://raw.githubusercontent.com/linuxoid69/zsh-plugins/master/vault-switch/install.sh | sh
```

## Configuration

For using a plugin you sould add VAULT_NODES to **~/.zshrc**
Variable **VAULT_NODES** must look as  

```bash
VAULT_NODES="node1,https://vault1.example.com,secret_token1;node2,https://vault2.example.com,secret_token2"
```

Name of a node, address, token  are separating comma. Other nodes separate semicolon.  
After need to add name of the plugin to **~/.zshrc** to variable **plugins=(vault-switch)**

**Example usage:**

![vault-switch](example.png)

State of restoring stored in **~/.vault-switch/credentials**  
