## ⚠️⚠️⚠️ Quan trọng ⚠️⚠️⚠️

Cần tạo ví mới cho bot và ví mới để nhận token mint nhé.

## Yêu cầu cần có

Để sử dụng điều này, bạn cần sử dụng cửa sổ điều khiển/terminal và cài đặt Node.js trên máy tính của bạn. Vì vậy, hãy đảm bảo rằng bạn đã cài đặt Node.js.

### Cài đặt NodeJS

Vui lòng truy cập [https://nodejs.org/en/download](https://nodejs.org/en/download) và làm theo hướng dẫn cài đặt.

### Khởi chạy RPC của riêng bạn

Để đăng ký, bạn cần có quyền truy cập vào một Dodgecoin RPC. Ví dụ: [https://getblock.io/](https://getblock.io/) cung cấp dịch vụ để truy cập vào RPC.
Bạn sẽ cần điều đó để cấu hình.

## Thiết lập

### Sao chép và cài đặt git

Cài đặt bằng git clone (yêu cầu git và node trên máy tính của bạn)

#### Sao chép git
```
git clone https://github.com/verydogelabs/inscription-wallet.git
```

**hoặc**

tải tệp zip này [zip file](https://github.com/verydogelabs/inscription-wallet/archive/refs/heads/main.zip) và giải nén vào một thư mục.

Bây giờ mở terminal và chuyển đến thư mục đã cài đặt mã nguồn.
####

```
cd <đường dẫn đến thư mục tải về / cài đặt>
npm install
```

Sau khi giải quyết tất cả các phụ thuộc, bạn có thể cấu hình môi trường:

### Cấu hình môi trường

Sao chép `.env.example` thành `.env` và thêm thông tin nút của bạn:

```
NODE_RPC_URL=http://<ip>:<port>
# Điều này là tùy chọn nếu bạn có RPC từ getblock.io
NODE_RPC_USER=<tên người dùng>
NODE_RPC_PASS=<mật khẩu>
TESTNET=false
FEE_PER_KB=500000000
```

Bạn có thể lấy phí hiện tại cho mỗi kb từ [đây](https://blockchair.com/).

## Nạp tiền

Tạo một tệp `.wallet.json` mới:

```
node . wallet new
```

Sau đó gửi DOGE đến địa chỉ được hiển thị. Sau khi gửi, đồng bộ hóa ví của bạn:

```
node . wallet sync
```

Nếu bạn đang tạo nhiều, bạn có thể chia nhỏ UTXO của mình:

```
node . wallet split <số lượng>
```

Khi bạn hoàn tất việ
