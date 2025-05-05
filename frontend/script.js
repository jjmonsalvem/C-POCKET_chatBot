const apiUrl = 'http://localhost:3001/messages';
const chatBox = document.getElementById('chat-box');
const userInput = document.getElementById('user-input');

function renderMessage(content, sender) {
  const div = document.createElement('div');
  div.className = `message ${sender}`;
  div.textContent = content;
  chatBox.appendChild(div);
  chatBox.scrollTop = chatBox.scrollHeight;
}

async function loadMessages() {
  const res = await fetch(apiUrl);
  const messages = await res.json();
  chatBox.innerHTML = '';
  messages.forEach(msg => renderMessage(msg.content, msg.sender));
}

async function sendMessage() {
  const input = userInput.value.trim();
  if (!input) return;

  renderMessage(input, 'user');
  userInput.value = '';

  await fetch(apiUrl, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ input })
  });

  setTimeout(loadMessages, 500); // Espera pequeña para que cargue la respuesta del bot
}

function handleEnter(e) {
  if (e.key === 'Enter') sendMessage();
}

window.onload = loadMessages;
