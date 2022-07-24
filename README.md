# Data Cleaning
Membersihkan data sample traffic ecommerce bulan Oktober 2019 dan November 2019.

# Tujuan Project
- Mengaplikasikan perintah bash untuk pemrosesan data.
- Mengaplikasikan command csvkit untuk pemrosesan data.
- Melakukan cleaning data di Shell.
- Memanfaatkan Git Version Control sebagai repository.

# Deskripsi Task
Berikut adalah deskripsi kode pada script clean data.sh:
1. DIR="/root/gema" untuk mendefinisikan direktori tempat penyimpanan data dan file clean_data.sh
2. csvstack $DIR/2019-Oct-sample.csv $DIR/2019-Nov-sample.csv > $DIR/data_stack.csv untuk menggabungkan data 2019-Oct-sample.csv dengan 2019-Nov-sample.csv lalu disimpan sebagai data_stack.csv
3. csvcut -c event_time,event_type,product_id,category_id,brand,price,category_code $DIR/data_stack.csv > $DIR/data_cut.csv untuk menyeleksi kolom-kolom yang diperlukan lalu disimpan sebagai data_cut.csv
4. csvgrep -c "event_type" -m "purchase" $DIR/data_cut.csv > $DIR/data_purchase.csv untuk menyeleksi baris data dengan aktivitas pembelian saja lalu disimpan sebagai data_purchase.csv

# Cara Penggunaan Program
1. Pindahkan data 2019-Oct-sample.csv dan 2019-Nov-sample.csv ke folder direktori terminal Anda, sebab size data besar.
2. Download file clean_data.sh ke folder direktori terminal Anda.
3. Buka dan edit file clean_data.sh di terminal dengan syntax 'vim clean_data.sh'.
4. Definisikan variabel DIR sebagai direktori Anda menyimpan dan mengerjakan data sesuai langkah 1. Lalu simpan dengan perintah ':wq'.
5. Jalankan clean_data.sh di terminal dengan syntax './clean_data.sh'.

# Saran Perbaikan
- Menyelesaikan tugas splitting data kategori produk dan nama product pada kolom category_code.




