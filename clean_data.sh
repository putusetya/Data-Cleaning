#!/bin/bash

DIR="/root/gema"

# Menggabungkan data 2019-Oct-sample.csv dengan 2019-Nov-sample.csv
csvstack $DIR/2019-Oct-sample.csv $DIR/2019-Nov-sample.csv > $DIR/data_stack.csv

# Menyeleksi kolom yang diperlukan dari data_stack.csv
csvcut -c event_time,event_type,product_id,category_id,brand,price,category_code $DIR/data_stack.csv > $DIR/data_cut.csv

# Menyeleksi baris data dengan aktivitas pembelian (event_type = purchase)
csvgrep -c "event_type" -m "purchase" $DIR/data_cut.csv > $DIR/data_purchase.csv

echo ""
echo "Data sudah dibersihkan dan disimpan dalam file data_purchase.csv"
echo ""

# Menampilkan head data_purchase.csv
head $DIR/data_purchase.csv | csvlook
