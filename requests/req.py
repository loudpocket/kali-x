import requests
import socket
import socks


def connectTor():
        socks.setdefaultproxy(socks.PROXY_TYPE_SOCKS5, "127.0.0.1", 9050, True)
        socket.socket = socks.socksocket

def main():
        connectTor()
	
	url = 'https://wordpress.com/wp-login.php'
        values = {'log': 'admin', 'pwd' : 'password'}
        agent = {'user-agent' : 'Mozilla/5.0 (Windows NT 6.1; Win64; x64'}

	r = requests.post(url, values, headers=agent)
	print(r.text)

if __name__ == "__main__":
        main()
