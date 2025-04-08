# :mountain: Homelab Terraform :test_tube:
[![task](https://img.shields.io/badge/Task-Enabled-brightgreen?style=for-the-badge&logo=task&logoColor=white)](https://taskfile.dev/#/)

A Terraform repo for my homelab.

---

## :framed_picture: Background

[Terraform][1] is used to deploy resources in my [homelab][4]. Specifically, containers and virtual machines in Proxmox.

I am using the [Telmate/proxmox provider][7] for my homelab setup.

My homelab has `arm64` and `amd64` clusters and so this repo needs to be able to handle both.

Ansible is used to configure my homelab. See [Homelab Playbooks][3].

---

## :gear: Config

Different roles are broken up into different directories, like a new LXC container in `lxc_new`.

See [proxmox_lxc][8] and [proxmox_vm_qemu][9] resources for more details.

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
terraform init
terraform plan -var-file=secrets.tfvars
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
[7]: <https://registry.terraform.io/providers/Telmate/proxmox/latest/docs>
[8]: <https://registry.terraform.io/providers/Telmate/proxmox/latest/docs/resources/lxc>
[9]: <https://registry.terraform.io/providers/Telmate/proxmox/latest/docs/resources/vm_qemu>
