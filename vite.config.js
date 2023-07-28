import { defineConfig } from "vite";
import react from "@vitejs/plugin-react";

// https://vitejs.dev/config/
export default defineConfig({
  server: {
    https: {
      cert: "./src/certificates/cert.pem",
      key: "./src/certificates/key.pem",
    },
  },
  plugins: [react()],
});
