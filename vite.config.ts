import { fileURLToPath, URL } from "node:url";
import { defineConfig } from "vite";
import vue from "@vitejs/plugin-vue";
import vueJsx from "@vitejs/plugin-vue-jsx";
import fs from "node:fs";
import path from "node:path";

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [
    vue(),
    vueJsx(),
    {
      name: "serve-nested-projects",
      configureServer(server) {
        // Add middleware BEFORE Vite's built-in middleware (no return)
        server.middlewares.use((req, res, next) => {
          if (!req.url?.startsWith("/projects/")) {
            return next();
          }

          const urlPath = req.url.split("?")[0];
          let filePath = path.join(process.cwd(), "public", urlPath);

          // If directory or no extension, try index.html
          if (urlPath.endsWith("/") || !path.extname(urlPath)) {
            filePath = path.join(filePath, "index.html");
          }

          if (fs.existsSync(filePath) && fs.statSync(filePath).isFile()) {
            const ext = path.extname(filePath).toLowerCase();
            const mimeTypes: Record<string, string> = {
              ".html": "text/html",
              ".js": "application/javascript",
              ".css": "text/css",
              ".json": "application/json",
              ".png": "image/png",
              ".jpg": "image/jpeg",
              ".jpeg": "image/jpeg",
              ".gif": "image/gif",
              ".svg": "image/svg+xml",
              ".ico": "image/x-icon",
              ".woff": "font/woff",
              ".woff2": "font/woff2",
              ".ttf": "font/ttf",
              ".mp3": "audio/mpeg",
              ".wav": "audio/wav",
              ".mp4": "video/mp4",
              ".webm": "video/webm",
            };
            res.setHeader("Content-Type", mimeTypes[ext] || "application/octet-stream");
            
            // Inject back button and favicon into HTML files
            if (ext === ".html") {
              let html = fs.readFileSync(filePath, "utf-8");
              
              // Determine favicon based on project
              const projectFavicons: Record<string, string> = {
                "full-of-noise": "/icons/full-of-noise.png",
                "telos": "/icons/telos.png",
                "it-support-docs": "/icons/frederiksberg.svg",
                "semmler-frontend": "/icons/semler.svg",
                "angular-pokemon-app": "/icons/pokeball.gif",
              };
              const projectSlug = urlPath.split("/")[2];
              const faviconPath = projectFavicons[projectSlug] || "/ponyta.png";
              
              const backButton = `
                <a href="/projects" id="portfolio-back-btn" onclick="window.location.href='/projects';return false;" style="
                  position: fixed;
                  top: 16px;
                  left: 16px;
                  z-index: 99999;
                  background: #1a1a1a;
                  color: #fff;
                  padding: 8px 16px;
                  border-radius: 8px;
                  text-decoration: none;
                  font-family: system-ui, sans-serif;
                  font-size: 14px;
                  display: flex;
                  align-items: center;
                  gap: 6px;
                  box-shadow: 0 2px 8px rgba(0,0,0,0.3);
                  transition: background 0.2s;
                " onmouseover="this.style.background='#333'" onmouseout="this.style.background='#1a1a1a'">
                  <img src="/ponyta.png" style="width:24px;height:24px;object-fit:contain;" alt="" /> Portfolio
                </a>
              `;
              const faviconType = faviconPath.endsWith('.svg') ? 'svg+xml' : faviconPath.endsWith('.gif') ? 'gif' : 'png';
              const faviconTag = `<link rel="icon" type="image/${faviconType}" href="${faviconPath}">`;
              
              // Remove existing favicon links and add new one
              html = html.replace(/<link[^>]*rel=["']icon["'][^>]*>/gi, '');
              html = html.replace("</head>", `${faviconTag}</head>`);
              html = html.replace("</body>", `${backButton}</body>`);
              res.end(html);
              return;
            }
            
            res.end(fs.readFileSync(filePath));
            return;
          }
          next();
        });
      },
    },
  ],
  resolve: {
    alias: {
      "@": fileURLToPath(new URL("./src", import.meta.url)),
    },
  },
});
