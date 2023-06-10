## ⚠️⚠️⚠️ Quan trọng ⚠️⚠️⚠️

Cần tạo ví mới cho bot và ví mới để nhận token mint nhé.

## Yêu cầu cần có

### Cài đặt NodeJS

Vui lòng truy cập [https://nodejs.org/en/download](https://nodejs.org/en/download) và làm theo hướng dẫn cài đặt.

download bản cho windown về cài đặt như phầm mềm bình thường

### Cài đặt git bash

Do windown ko hỗ chợ chạy file `.sh` nên cần cài thêm https://gitforwindows.org/

download bản cho windown về cài đặt như phầm mềm bình thường

### Download code về (nhắn tin để nhận code của bot)

### Cấu hình môi trường

### Nạp tiền

Bật terminal của `git bash` lên, (tìm kiếm git bash xong mở nó lên) hoặc từ folder source chuột phải vào chọn `git bash`. Tất cả các lệnh phía sau đều dùng git bash để chạy trong folder của source.

#### Tạo một tệp `.wallet.json` mới chạy lệnh dưới:

```
node . wallet new
```

file này sẽ có private key vào địa chỉ ví của bot

#### Nạp tiền cho bot chạy

gửi DOGE (gửi khoảng 100 doge ~ 6.7$, bot chạy chỉ mất fee nên rất rẻ gửi 100 sau này lại rút về, ko mất đâu) đến địa chỉ được hiển thị.

#### Sau khi gửi, đồng bộ hóa ví của bạn:

Sau  khi gửi thành công kiểm tra tại: https://chain.so/ thì chạy tiếp lệnh.

```
node . wallet sync
```

Chia nhỏ UTXO của mình để mint nhanh và nhiều hơn:

```
node . wallet split 10
```

chờ lệnh split xong thì làm bước tiếp

### Thay địa chỉ nhận token drc20

mở file `auto.sh` rồi thay địa chỉ ví nhận vào đoạn mã `XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX`

địa chỉ ví nhận chính là địa chỉ ví dpal để bot gửi token drc-20 vào đây.

### Bắt đầu mint token

Từ git bash terminal gõ lệnh sau để mint token

```
./auto.sh 
```

### Phí mint

Bot chỉ mất phí mạng, ko mất phí server nên rất rẻ, chạy cả chạy chỉ tốn 2->3$ thôi.


### Rút tiền

Sau khi mint xong có thể rút tiền từ ví bot về ví dpal

Truy cập vào trang https://dogechain.info/wallet/





