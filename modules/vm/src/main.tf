resource "azurerm_linux_virtual_machine" "example" {
  name                  = var.name
  resource_group_name   = var.rgname
  location              = var.location
  size                  = var.size
  admin_username        = var.admin_username
  network_interface_ids = var.network_interface_ids
  # [
  #   azurerm_network_interface.example.id,
  # ]

  admin_ssh_key {
    username   = "adminuser"
    public_key = file("~/.ssh/id_rsa.pub")
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  boot_diagnostics {
    storage_account_uri = var.storage_account_uri
  }
  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}
