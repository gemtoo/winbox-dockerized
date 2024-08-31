# Dockerized WinBox GUI
## How to run
1. Install [Docker + Docker Compose for your OS](https://docs.docker.com/engine/install/).
2. Download WinBox 64bit from [MikroTik official website](https://mikrotik.com/download).
2. Clone the repo and place `winbox64.exe` inside repository root. Then create some additional folders.
```
git clone https://github.com/gemtoo/winbox-dockerized.git && cd winbox-dockerized
mv /path/to/winbox64.exe winbox64.exe
mkdir winedata
```
3. Run WinBox container.
```
docker compose up -d
```
## Notes
Current version will only work if display server is Xorg.
