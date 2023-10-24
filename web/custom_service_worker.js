self.addEventListener('fetch', (event) => {
    event.respondWith(fetch(event.request));
  });
  
  self.addEventListener('beforeinstallprompt', (event) => {
    event.preventDefault();
  });
  