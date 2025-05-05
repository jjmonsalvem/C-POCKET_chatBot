
# C-POCKET ChatBot

Este proyecto es una prueba técnica que consiste en un chatbot funcional construido con:

- Backend: Node.js + Express + MySQL
- Frontend: HTML, CSS y JavaScript (sin frameworks)
  
Permite enviar mensajes a un bot y recibir respuestas automáticas, simulando una conversación en una interfaz similar a un chat básico de WhatsApp.

---

## Requisitos

Antes de empezar, asegúrate de tener instalado:

- [Node.js](https://nodejs.org/)
- [MySQL](https://www.mysql.com/)
- Git

---

## Instalación

Clona el repositorio:

```bash
git clone https://github.com/jjmonsalvem/C-POCKET_chatBot.git
cd C-POCKET_chatBot
```

---

## Configuración del backend

1. Ve a la carpeta del backend:

```bash
cd backend
```

2. Instala las dependencias:

```bash
npm install
```

3. Crea un archivo `.env` y agrega tus credenciales de base de datos:

```env
DB_HOST="localhost"
DB_USER="root"
DB_PASSWORD=""
DB_NAME="chatbot_app"
PORT="3001"
```

4. Asegúrate de tener la base de datos `chatbot_app` creada en MySQL.

Puedes usar esta estructura básica:

```sql
CREATE DATABASE chatbot_app;
USE chatbot_app;

CREATE TABLE messages (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_input TEXT NOT NULL,
  bot_response TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

5. Inicia el servidor:

```bash
npm start
```

El backend debería correr en `http://localhost:3001`.

---

## 🖥️ Uso del frontend

1. Abre una nueva terminal y navega a la carpeta `frontend`:

```bash
cd ../frontend
```

2. Abre el archivo `index.html` en tu navegador. Puedes usar Live Server en VSCode o simplemente abrirlo manualmente:

```
file:///ruta/a/tu/proyecto/frontend/index.html
```

Por ejemplo:

```
http://127.0.0.1:5500/frontend/index.html
```

---

## Cómo funciona

- Escribe un mensaje en el input.
- Haz clic en “Enviar”.
- El chatbot responde automáticamente y se guarda el histórico en la base de datos.

---

## Pruebas

Puedes usar Postman para probar el backend directamente con la ruta:

```
POST http://localhost:3001/api/messages
Body (JSON):
{
  "input": "Hola"
}
```

---

## Estructura del proyecto

```
C-POCKET_chatBot/
├── backend/
│   ├── index.js
│   ├── controllers/
│   ├── routes/
│   ├── .env
│   └── package.json
├── frontend/
│   └── index.html
└── README.md
```

---

## Autor

Juan José Monsalve  
[https://github.com/jjmonsalvem](https://github.com/jjmonsalvem)

---

## Notas finales

Este proyecto fue construido con enfoque en simplicidad y funcionalidad básica para fines de evaluación técnica. Está listo para ser probado y validado.

Importa el archivo chatbot_app.sql en tu servidor MySQL antes de ejecutar el backend.

## Requisitos para correr el proyecto

- Node.js y npm
- MySQL (puedes usar XAMPP, WAMP, MAMP, etc.)

## Configuración del backend

1. Asegúrate de tener MySQL activo (puedes usar XAMPP)
2. Crea una base de datos llamada `chatbot_app`
3. Importa el archivo `chatbot_app.sql` incluido en este repositorio
4. Crea un archivo `.env` con esta estructura:


