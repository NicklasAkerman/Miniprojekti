git:
  pkg.installed

gimp:
  pkg.installed

micro:
  pkg.installed

nginx:
  pkg.installed

chromium:
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

snapd_path:
  cmd.run:
    - name: echo 'export PATH="$PATH:/snap/bin"' >> ~/.bashrc
    - unless: grep -q '/snap/bin' ~/.bashrc
