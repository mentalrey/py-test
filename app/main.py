# simple_http_server.py
from http.server import SimpleHTTPRequestHandler, HTTPServer

PORT = 3000

class MyHandler(SimpleHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header("Content-type", "text/html")
        self.end_headers()
        self.wfile.write(b"Hello from port 3000!")

if __name__ == "__main__":
    server_address = ("", PORT)  # "" means listen on all interfaces
    httpd = HTTPServer(server_address, MyHandler)
    print(f"Serving HTTP on port {PORT}...")
    httpd.serve_forever()

