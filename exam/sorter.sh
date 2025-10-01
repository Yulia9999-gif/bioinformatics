import os

def sort_files_in_directory(directory):
    # Проходим по всем файлам в указанной директории
    for filename in os.listdir(directory):
        # Проверяем, что это текстовый файл
        if filename.endswith('.txt'):
            file_path = os.path.join(directory, filename)
            
            # Создаем имя для нового файла
            new_filename = f"{os.path.splitext(filename)[0]}_sorted.txt"
            new_file_path = os.path.join(directory, new_filename)
            
            try:
                # Читаем содержимое файла
                with open(file_path, 'r', encoding='utf-8') as file:
                    lines = file.readlines()
                
                # Сортируем строки
                lines.sort()
                
                # Записываем отсортированные строки в новый файл
                with open(new_file_path, 'w', encoding='utf-8') as new_file:
                    new_file.writelines(lines)
                    
                print(f"Успешно обработан файл: {filename}")
                
            except Exception as e:
                print(f"Ошибка при обработке файла {filename}: {str(e)}")

# Пример использования
if __name__ == "__main__":
    # Укажите путь к директории с файлами
    directory_path = input("Введите путь к директории с файлами: ")
    sort_files_in_directory(directory_path)
