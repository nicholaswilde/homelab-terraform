# :mountain: Homelab Terraform :test_tube:
[![task](https://img.shields.io/badge/Task-Enabled-brightgreen?style=for-the-badge&logo=task&logoColor=white)](https://taskfile.dev/#/)

A Terraform repo for my homelab.

---

## :framed_picture: Background

[Terraform][1] is used to deploy resources in my [homelab][4]. Specifically, containers and virtual machines in Proxmox.

Ansible is used to configure my homelab. See [Homelab Playbooks][3].

---

## :gear: Config

Different roles are broken up into different directories, like a new LXC container in `lxc_new`.

## :key: Secrets

[SOPS][5] is used with [age][6] to encrypt and decrypt secrets.

### :lock: Encrypt

```shell
sops -e --input-type dotenv --output-type dotenv secrets.tfvars > secrets.tfvars.enc
```

### :unlock: Decrypt

```shell
sops -d --input-type dotenv --output-type dotenv secrets.tfvars.enc > secrets.tfvars
```

---

## :pencil: Usage

```shell
terraform apply -var-file=secrets.tfvars
```

---

## :balance_scale: License

[Apache License 2.0](./LICENSE)

---

## :pencil: Author

This project was started in 2025 by [Nicholas Wilde][2].

[1]: <https://www.terraform.io/>
[2]: <https://github.com/nicholaswilde/>
[3]: <https://github.com/nicholaswilde/homelab-playbooks>
[4]: <https://nicholaswilde.io/homelab>
[5]: <https://getsops.io/>
[6]: <https://github.com/FiloSottile/age>