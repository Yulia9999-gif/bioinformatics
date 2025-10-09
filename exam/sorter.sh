import os

def sort_lines_in_files(folder='.'):
    # Перебираем все файлы в папке
    for filename in os.listdir(folder):
        # Проверяем, что это текстовый файл
        if filename.endswith('.txt') and not filename.endswith('_sorted.txt'):
            filepath = os.path.join(folder, filename)

            # Читаем строки из файла
            with open(filepath, 'r', encoding='utf-8') as f:
                lines = f.readlines()

            # Сортируем строки (без учёта регистра, чтобы сортировка была "человечной")
            sorted_lines = sorted(lines, key=lambda s: s.lower())

            # Формируем новое имя файла
            new_filename = filename[:-4] + '_sorted.txt'
            new_filepath = os.path.join(folder, new_filename)

            # Записываем отсортированные строки в новый файл
            with open(new_filepath, 'w', encoding='utf-8') as f:
                f.writelines(sorted_lines)

            print(f'Создан файл: {new_filename}')

if name == '__main__':
    sort_lines_in_files()
