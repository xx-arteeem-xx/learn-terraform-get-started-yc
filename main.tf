# 1. Объявляем провайдер, который будет создавать ресурсы
terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

# 2. Создаем ресурс - текстовый файл
resource "local_file" "example" {
  filename = "hello_world.txt"
  content  = "Привет, это простой пример конфигурации Terraform!"
}

# 3. Выводим результат (путь к файлу) в консоль после создания
output "file_path" {
  value = local_file.example.filename
}
