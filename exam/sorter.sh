for filename in ./results/data*; do
    basename=$(basename "$filename" .txt)
    sort "$filename" > "./results/${basename}_sorted.txt"
    echo "Обработан файл: ${basename}_sorted.txt"
done
