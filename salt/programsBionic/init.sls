git:
  pkg.installed

gimp:
  pkg.installed

nginx:
  pkg.installed

snapd:
  pkg.installed
    
vscode:
  cmd.run:
    - name: sudo snap install code --classic
    - unless: snap list code
    
postman:
  cmd.run:
    - name: sudo snap install postman
    - unless: snap list postman

eclipse:
  cmd.run:
    - name: sudo snap install eclipse --classic
    - unless: snap list eclipse

chromium:
  cmd.run:
    - name: sudo snap install chromium
    - unless: snap list chromium
micro:
  cmd.run:
    - name: sudo snap install micro --classic
    - unless: snap list chromium
