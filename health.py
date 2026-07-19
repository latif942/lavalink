from http.server import HTTPServer, BaseHTTPRequestHandler

HTML = """<!DOCTYPE html>
<html>
<head>
  <title>Lavalink</title>
  <style>
    * { margin: 0; padding: 0; box-sizing: border-box; }
    body {
      background: #0f0f13;
      color: #fff;
      font-family: 'Segoe UI', sans-serif;
      display: flex;
      align-items: center;
      justify-content: center;
      height: 100vh;
    }
    .card {
      text-align: center;
      padding: 40px 60px;
      background: #1a1a24;
      border-radius: 16px;
      border: 1px solid #7828C8;
      box-shadow: 0 0 40px rgba(120,40,200,0.3);
    }
    .dot {
      width: 16px;
      height: 16px;
      background: #22c55e;
      border-radius: 50%;
      display: inline-block;
      margin-right: 10px;
      animation: pulse 2s infinite;
    }
    @keyframes pulse {
      0%, 100% { opacity: 1; }
      50% { opacity: 0.4; }
    }
    h1 { font-size: 2rem; margin-bottom: 8px; }
    .status { font-size: 1.1rem; color: #22c55e; display: flex; align-items: center; justify-content: center; }
    .version { margin-top: 16px; color: #888; font-size: 0.85rem; }
  </style>
</head>
<body>
  <div class="card">
    <h1>🎵 Lavalink</h1>
    <div class="status"><span class="dot"></span> Online & Running</div>
    <div class="version">Surface Utilities • v4.0.8</div>
  </div>
</body>
</html>"""

class Handler(BaseHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header("Content-Type", "text/html")
        self.end_headers()
        self.wfile.write(HTML.encode())

    def do_HEAD(self):
        self.send_response(200)
        self.send_header("Content-Type", "text/html")
        self.end_headers()

    def log_message(self, format, *args):
        pass

if __name__ == "__main__":
    server = HTTPServer(("0.0.0.0", 8080), Handler)
    server.serve_forever()