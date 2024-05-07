nano /etc/systemd/system/keycloak.service

**

[Unit]
Description=Keycloak Identity Provider
Requires=network.target
After=syslog.target network.target
[Service]
Type=idle
User=vagrant
Group=vagrant
#RemainAfterExit=yes
LimitNOFILE=102642
ExecStart=/opt/keycloak/bin/kc.sh start-dev
#ExecStart=/opt/keycloak/bin/kc.sh start-dev --log="console,file" --log-console-format="'%d{yyyy-MM-dd HH:mm:ss,SSS} %-5p [%c] (%t{id}) %s%e%n'" --log-level="DEBUG,org.hibe>
#WorkingDirectory=/opt/keycloak
StandardOutput=null
[Install]
WantedBy=multi-user.target
