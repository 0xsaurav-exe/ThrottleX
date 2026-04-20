# 🔥 ThrottleX - Rate Limit Detection Tool

ThrottleX is a lightweight Bash-based tool designed to detect rate limiting and throttling behavior in web applications by analyzing response codes and timing patterns.

---

## 🚀 Features

* Supports **GET & POST requests**
* Detects **HTTP blocking (429 / 403)**
* Identifies **response time throttling**
* Supports **custom payloads**
* Lightweight and easy to use

---

## ⚙️ Installation

```bash
git clone https://github.com/0xsaurav-exe/ThrottleX.git
cd ThrottleX
chmod +x throttlex.sh
```

---

## 🧪 Usage

### 🔹 Basic GET request

```bash
./throttlex.sh http://example.com
```

### 🔹 POST request (form data)

```bash
./throttlex.sh "http://target/login" POST "username=admin&password=123"
```

---

## 📊 Example Output

```
[1] Status: 200 | Time: 0.002
[2] Status: 429 | Time: 0.450

Average Response Time: 0.210
[!] Rate limiting detected
```

---

## 🧠 Detection Logic

ThrottleX identifies:

* **Hard Rate Limiting** → HTTP 429 / 403
* **Soft Throttling** → Increasing response time
* **No Protection** → Stable responses

---

## ⚠️ Disclaimer

This tool is intended for **authorized security testing only**.
Do not use against systems without permission.

---

## 👨‍💻 Author

**0xsaurav-exe**
