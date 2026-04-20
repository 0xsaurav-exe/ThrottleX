# 🔥 RLD - Rate Limit Detector

A Bash-based tool to detect rate limiting and throttling behavior in web applications.

---

## 🚀 Features

* GET & POST request support
* Detects HTTP blocking (429 / 403)
* Detects response time increase (throttling)
* Lightweight and fast

---

## ⚙️ Usage

### Basic (GET)

```bash
./rld.sh http://example.com
```

### POST request

```bash
./rld.sh "http://target/login" POST "username=admin&password=123"
```

---

## 📊 Output Example

```
[1] Status: 200 | Time: 0.002
[2] Status: 429 | Time: 0.450

Average Response Time: 0.210
[!] Rate limiting detected
```

---

## ⚠️ Disclaimer

Use only on authorized systems. Do not test against targets without permission.

---

## 🧠 Author

0xsaurav-exe
