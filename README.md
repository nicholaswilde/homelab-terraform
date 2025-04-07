# :mountain: Homelab Terraform :test_tube:
[![task](https://img.shields.io/badge/Task-Enabled-brightgreen?style=for-the-badge&logo=task&logoColor=white)](https://taskfile.dev/#/)

A Terraform repo for my homelab.

---

# :framed_picture: Background

[Terraform][1] is used to deploy resources in my [homelab][4]. Specifically, containers and virtual machines in Proxmox.

Ansible is used to configure my homelab. See [Homelab Playbooks][3].

---

## :gear: Config

WIP

## :key: Secrets

```shell

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
