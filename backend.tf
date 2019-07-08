terraform {
    backend "azurerm" {
      storage_account_name = "tfstateqc"
      container_name       = "tfstate-691d05c0-459b-4483-8acf-dd57427f1852-terralabs19"
      key                  = "terraform.tfstate"
      access_key           = "tVidc08QkqzY9ypFmA4yil9qK8E8fwbvqq09sKLlCwjXQhBGIq45izwgD3dIwuWGLza8bh5lAUJsN6GIz7TzSg=="
    }
}

