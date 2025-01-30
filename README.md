# Minitalk

## 🌟 Project Overview
**Minitalk** is a project that implements a simple communication protocol between processes on Unix using signals (`SIGUSR1` and `SIGUSR2`). It allows a client to send messages to a server, which processes and displays them in the terminal.

## 🚀 How to Use

### 📋 Requirements
- Unix/Linux operating system.
- CC (C compiler).

### 📖 Instructions

1. **Clone the repository:**
   ```bash
   git clone <repository URL>
   cd <repository_name>
   ```

2. **Compile the project:**
   ```bash
   make
   ```

3. **Run the server:**
   In one terminal, run:
   ```bash
   ./server
   ```
   The server will display the PID (Process ID) in the terminal. Note this number.

4. **Run the client:**
   In another terminal, send a message to the server using the following command:
   ```bash
   ./client <server PID> "Your message here"
   ```

### 🧹 Cleanup
To remove the files generated during compilation, including the static library from libft:
```bash
make fclean
```

## 🛠 Technologies
- **C Language**: Used to implement the project's logic.
- **Unix Signals**: Process communication using `SIGUSR1` and `SIGUSR2`.
- **Makefile**: Compilation automation.
- **Norminette**: Compliance with the 42 School coding standard.

---

Follow these steps to test and interact with the client-server communication in **Minitalk**.

## 💬 &nbsp;Contacts
<img align="left" src="https://avatars.githubusercontent.com/curtyraissa?size=100">

Made by [Raissa Curty](https://github.com/curtyraissa)!

<a href="https://www.linkedin.com/in/raissa-curty/" target="_blank">
    <img style="border-radius:50%;" src="https://raw.githubusercontent.com/maurodesouza/profile-readme-generator/master/src/assets/icons/social/linkedin/default.svg" width="52" height="40" alt="linkedin logo"  />
</a>&nbsp;
