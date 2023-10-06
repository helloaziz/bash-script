#!/bin/bash

# Fungsi is_prime() untuk memeriksa apakah suatu angka adalah bilangan prima atau tidak
is_prime() {
    num=$1
    if [ $num -lt 2 ]; then
        echo "bilangan ini bukan bilangan prima"
        exit 1
    fi

    for ((i = 2; i*i <= num; i++)); do
        if [ $((num % i)) -eq 0 ]; then
            echo "bilangan ini bukan bilangan prima"
            exit 1
        fi
    done

    echo "bilangan ini adalah bilangan prima"
}

# Memeriksa apakah jumlah argumen yang diberikan sesuai
if [ $# -ne 1 ]; then
    echo "Penggunaan: $0 <bilangan>"
    exit 1
fi

# Mengambil bilangan dari argumen command line dan memanggil fungsi is_prime()
number=$1
is_prime $number
