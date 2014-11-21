import os
import SimpleHTTPServer
import SocketServer

PORT = int(os.getenv('HTTP_PORT'))

Handler = SimpleHTTPServer.SimpleHTTPRequestHandler

httpd = SocketServer.TCPServer(("", PORT), Handler)

print "serving at port", PORT
httpd.serve_forever()
