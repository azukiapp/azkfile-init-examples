import os
import http.server
import socketserver

PORT = int(os.environ.get('HTTP_PORT'))

Handler = http.server.SimpleHTTPRequestHandler

httpd = socketserver.TCPServer(("", PORT), Handler)

print("serving at port", PORT)
httpd.serve_forever()
