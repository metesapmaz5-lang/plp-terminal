#!/bin/bash

echo "🟢 PLP Terminal Base Kurulumu Başlıyor..."
echo "----------------------------------------"

# 1. Gerekli paketleri sisteme yükle (Alacritty ve Fastfetch)
echo "📦 Paketler yükleniyor (Sudo şifresi gerekebilir)..."
sudo apt update && sudo apt install -y alacritty fastfetch

# 2. Kullanıcının .config klasöründe gerekli dizinleri oluştur
echo "📂 Konfigürasyon dizinleri ayarlanıyor..."
mkdir -p ~/.config/alacritty
mkdir -p ~/.config/fastfetch

# 3. Hazırladığımız dosyaları doğru yerlerine kopyala
echo "⚙️ PLP yeşil teması ve ayarları uygulanıyor..."
cp alacritty.toml ~/.config/alacritty/alacritty.toml
cp fastfetch.jsonc ~/.config/fastfetch/config.jsonc

echo "----------------------------------------"
echo "✅ Kurulum tamamlandı! Artık Alacritty terminalini açıp"
echo "   yeşil PLP logonun ve akıcı performansın tadını çıkarabilirsin."
