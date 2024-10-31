resource "proxmox_vm_qemu" "virtual_machines" {
  
  for_each = var.virtual_machines

  clone = each.value.vm_template
  full_clone = true
  force_create = false
  target_node = each.value.target_node
  vmid = each.value.vmid
  name = each.value.hostname
  desc = each.value.description
  tags = each.value.tags
  vm_state = each.value.vm_state
  protection = each.value.protection
  agent = 1
  bios = "seabios"
  onboot = true
  bootdisk = "scsi0"
  os_type = "cloud-init"
  sockets = 1
  cores = each.value.cpu_cores
  numa = true
  vcpus = 1
  cpu = "host"
  memory = each.value.memory
  balloon = 0
  hotplug = "network,disk,usb"
  scsihw = "virtio-scsi-pci"
  ciuser = "mkudryashov"
  cipassword = "@cuUUe7TH"
  ipconfig0 = "ip=${each.value.ip_address},gw=${each.value.gateway}"
  ciupgrade = true
  nameserver = "10.10.5.254"
  searchdomain = "local"

  network {
    model = "virtio"
    bridge = "vmbr0"
    tag = 1005
  }
     
  serial {
    id = 0
    type = "socket"
  }

  vga {
    type = "serial0"
  }

  disks {
    ide {
      ide0 {
        cloudinit {
          storage = "local_ext4_md0"
        }
      }
    }

    scsi {
      scsi0 {
        disk {
          size = each.value.hdd_size
          format = "qcow2"
          storage = "local_ext4_md0"
        }
      }
    }
  }
  
  sshkeys = <<EOF
    ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDsbVRdjzjjGneFF3EfMtRM+Q0ktwN0z44Rnv5Bd36ntBDuq+ScWMg0utD0PNaj0XX2Z8SsHiqtOhpLvyalKqVirsdkhnAAa/iW+hU9C2PB2Uw5SyyHfHsiePJ6DnMX8mm8yeAcnQMODoIqdZyldtbYbOoMQNgm04ry9Wry17BuB9lNpAZGv0Y8bdovNX+Pg+oJV2QrxBV+A6Z7NSWQwkrf3EfKGaMtgNvwVLPE9qhEfh02LNyQfjrOB2NXzm3gvK8TFZxBKWisCiflm+7xefBNBC90zbHWkV20tMlWi620DURNZkx9aGUVoEN842OMAnwhcUx8XMn7vXqZfnRlv2vxOW2xublJcFnWSwsUgUQr/QoJjNskl6Jx8n856rtuJYoDK2kLJOBEGB8y9/vVyiRO3dpwpggkMbC2560gep0xMXrqhaDkrFuWuBanFZbJW0RFmK+H6Fo6HJrFnTDHn6RK0duBic414QKqpi2Hm8OqHgBq0dApgWOZFLNyeq/cgRU= mkudryashov@macbook-air.local

    ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCYAkayKZCAXs+7pphwAhlOZ4G48A8SFvsfOvuetjeaqJ8TtGKLe1dDnZ7AKY9uNbgLdGuQhVZqf4xKSxxU1Fg5JuXbh8KoSKZRRdE0XwyyiX0jTW81Vw4E8gc9BvHx9gDNWIjPFIJdVg99kOozp3tMkVwwuTyG5R0vf6ov0tmBOb1jWw9B33/kpi4LaCwsn/ltpRzDrSK+EABRPDLzgGCz72JGSFvmQ3dGvk1IPyMEHFN3XSzlvdWeC8hyGcdLXELEnxFX3c9KOc+LHHf9L2glQcJZrlrG+pUsh8eCyKlkY2ml64K85oSzPSvfB5X3vrjHoHUYZyaI715YWPbMvwspOEb3RnPvr+v84y+3iT/FkoQzOayE4tLV9y2NSVM79UZpdf1KgBeZ/ApjUY353pW0RX3u0jbH0a8ywXK0IY4VeW8Dwks2rC3qE7Zsp1INm9K89JoARJAYgr8L3aBhJ70lEwg3P55K3Psc7znNB+14DbWLBzhLtRRM2A4V09FdFV0= mkudryashov@ansible

    ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC2Sp0Ql87S2UnOs8+zQSA6iDui8m5T2/OM4U6IaXE1WlK1UonEVJcELAdEzLRO6wqqJe4YBIC0ANJPWeKp8DeTtnO0X/vX9tP86BCoIyI/c3iohe+wVLj9or3ivmQp+bHiTXm3BOy3KNs99TDvzIC9A8EVgQ9OSulUE16qPLpvZisDGLLCpIws+4TWJ90KB7wU5pMVAMZw9POnm7I3vipUYqBmhWrgRCweP6/KXa7o6IoX1goKnwTddAUaJyG0UQNv37V4sc8yAUNQX/uHSHC2kN+C1G57O2af6H7/UJMIgkGYyNEBugs1t5WpDWav2l25EZYbAnJiN51l6+Pc40hVEy1+xhR0s91/UwY7A6ZSoK5q/Y3OnC0kdhWn3GesF9pt/Hw36i3ywbvYB0MnYtJnbofSQCbani/nGBVex/P1vTJeZOZwd8CEhUvZ1nl6VLTi3Xf76ZDbqJmeaWOQJf0tWUdJV80mBc8WOO67ZiKkdgiDapLcJkBjVAnBYqH9S5E= mkudryashov@automation
  EOF 
}