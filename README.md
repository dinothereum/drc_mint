## ⚠️⚠️⚠️ Quan trọng ⚠️⚠️⚠️

Cần tạo ví mới cho bot và ví mới để nhận token mint nhé.

## 1. Yêu cầu cần có

### Cài đặt NodeJS

Vui lòng truy cập [https://nodejs.org/en/download](https://nodejs.org/en/download) và làm theo hướng dẫn cài đặt.

download bản cho windown về cài đặt như phầm mềm bình thường

### Cài đặt git bash

Do windown ko hỗ chợ chạy file `.sh` nên cần cài thêm https://gitforwindows.org/

download bản cho windown về cài đặt như phầm mềm bình thường

## 2. Download code về (nhắn tin để nhận code của bot)

## 3. Cấu hình môi trường


Bật terminal của `git bash` lên, (tìm kiếm git bash xong mở nó lên) hoặc từ folder source code chuột phải vào chọn `git bash`. 
Tất cả các lệnh phía sau đều dùng git bash để chạy trong folder của source.

### Tạo một tệp `.wallet.json` mới chạy lệnh dưới:

```
node . wallet new
```

file này chính là ví của bot sẽ có private key vào địa chỉ ví của bot

### Nạp tiền cho bot chạy

gửi DOGE (gửi khoảng 100 doge ~ 6.7$, bot chạy chỉ mất fee nên rất rẻ gửi 100 sau này thừa lại rút về, ko mất đâu) đến địa chỉ được hiển thị.
> Có thể mở file `.wallet.json` để xem địa chỉ ví

### Sau khi gửi, đồng bộ hóa ví của bạn:

Sau  khi gửi thành công (transaction phải confirm - kiểm tra tại https://chain.so/) thì chạy tiếp lệnh.

```
node . wallet sync
```

Chia nhỏ UTXO của mình để mint nhanh và nhiều hơn:

```
node . wallet split 10
```

chờ lệnh split xong (transaction confirm) thì làm bước tiếp.

### Thay địa chỉ nhận token drc20

mở file `auto.sh` rồi thay địa chỉ ví nhận vào đoạn mã `XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX`

địa chỉ ví nhận chính là địa chỉ ví dpal để bot gửi token drc-20 vào đây.

### Bắt đầu mint token

Từ git bash terminal gõ lệnh sau để mint token

```
./auto.sh 
```

file này cứ 4 phút nó call lệnh mint 1 lần, cứ treo terminal ở đó cho nó chạy nhé đừng tắt đi

## 4. Phí mint

Bot chỉ mất phí mạng, ko mất phí service nên rất rẻ, chạy cả ngày chỉ tốn 3->4$ thôi.

## 5. Rút doge thừa từ ví bot 

Sau khi mint xong có thể rút doge thừa từ ví bot về ví dpal

Truy cập vào trang https://dogechain.info/wallet/, chọn `Sweep Coins` rồi nhập `private key` vào để rút tiền về ví dpal, `private key` lấy trong file `.wallet.json` được sinh ra ở trên

## 6. Một số cài đặt

Các thông số mình đã thiết lập để chạy dc ổn định rồi, lúc nào đua gas mới phải thay thôi =))

#### File .env

Trong file này có `FEE_PER_KB=7000000` (0.0023$ 1 lệnh) đây chính là phí mạng, có thể tăng lên để nhanh hơn

### File auto.sh

File này có các setting quan trọng nhất

1. Dòng `node . drc-20 mint XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX fiwb 50 5`

- `XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX` chính là ví nhận token drc20, phải thay cái này trước khi chạy file auto này nhé
- `fiwb` là tên token muốn mint
- `50` là limit của token fiwb
- `5` là số lần chạy mỗi batch (cứ 4 phút mint 5 lần), có thể tăng số này lên, tối đa nên để 12 thôi

2. Dòng `sleep 240` 


là thời gian chờ để mint batch tiếp theo, 240 giây = 4 phút, có thể giảm thời gian này xuống, nhưng không nên giảm dưới 3 phút 
nhé.


### Một số lỗi

- `258: txn-mempool-conflict` tức là ví bot đó đang có nhiều transaction đang chờ trong memepool, 
nên ko thể nạp thêm lệnh mới được, cần chờ nó confirm thì mới nạp dc, cứ kệ nó cái `auto.sh` 4p nó nạp
lệnh mới 1 lần.

> Nếu check trong `https://chain.so/` mà lệnh cuối cùng đã confirm dc từ 24 block chở lên mà ko có lệnh mới thì có thẻ ví bot đó đã có lệnh bị lỗi ko thể thực hiện tiếp dc 

Cách khác phục là rút tiền khỏi ví (cách rút phía trên), tạo ví mới =)). 

